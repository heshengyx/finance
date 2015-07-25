package com.myself.finance.interceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.DefaultParameterHandler;
import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.myself.finance.page.Dialect;
import com.myself.finance.page.MySqlDialect;
import com.myself.finance.page.OracleDialect;
import com.myself.finance.page.Page;

@Intercepts({ @Signature(type = StatementHandler.class, method = "prepare", args = { Connection.class }) })
public class PageInterceptor implements Interceptor {

	private final static Logger logger = LoggerFactory.getLogger(PageInterceptor.class);

	public Object intercept(Invocation invocation) throws Throwable {
		logger.info("===============执行SQL===============");
		StatementHandler statementHandler = (StatementHandler) invocation
				.getTarget();
		MetaObject metaStatementHandler = MetaObject
				.forObject(statementHandler);
		BoundSql boundSql = statementHandler.getBoundSql();
		Object parameterObject = boundSql.getParameterObject();
		
		if (parameterObject != null && parameterObject instanceof Page<?>) {
        	Page<?> page = (Page<?>) parameterObject;
        	MappedStatement mappedStatement = (MappedStatement)   
        		     metaStatementHandler.getValue("delegate.mappedStatement");
        	Connection connection = (Connection) invocation.getArgs()[0];
        	
        	this.setTotalRecord(page,  
                    mappedStatement, connection);
        	Configuration configuration = (Configuration) metaStatementHandler
    				.getValue("delegate.configuration");
    		Dialect.Type databaseType = null;
    		try {
    			databaseType = Dialect.Type.valueOf(configuration.getVariables()
    					.getProperty("dialect").toUpperCase());
    		} catch (Exception e) {
    			e.printStackTrace();
    			// ignore
    		}

    		if (databaseType == null) {
    			throw new RuntimeException(
    					"the value of the dialect property in configuration.xml is not defined : "
    							+ configuration.getVariables().getProperty(
    									"dialect"));
    		}
    		Dialect dialect = null;
    		switch (databaseType) {
    		case MYSQL:
    			dialect = new MySqlDialect();
    			break;
    		case MSSQL:
    			dialect = new MySqlDialect();
    			break;
    		case ORACLE:
    			dialect = new OracleDialect();
    			break;
    		default:
    			dialect = new MySqlDialect();
    		}

    		String sql = (String) metaStatementHandler
    				.getValue("delegate.boundSql.sql");
    		metaStatementHandler.setValue("delegate.boundSql.sql", dialect
    				.getPageSql(sql, page));
    		metaStatementHandler.setValue("delegate.rowBounds.offset",
    				RowBounds.NO_ROW_OFFSET);
    		metaStatementHandler.setValue("delegate.rowBounds.limit",
    				RowBounds.NO_ROW_LIMIT);
    		logger.info("生成分页SQL : " + boundSql.getSql());
        }

		return invocation.proceed();
	}

	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	public void setProperties(Properties properties) {

	}

	private void setTotalRecord(Page<?> page, MappedStatement mappedStatement,
			Connection connection) {
		BoundSql boundSql = mappedStatement.getBoundSql(page);
		
		String sql = boundSql.getSql();
		String countSql = this.getCountSql(sql);
		logger.info("生成统计SQL : " + countSql);
		
		List<ParameterMapping> parameterMappings = boundSql
				.getParameterMappings();
		BoundSql countBoundSql = new BoundSql(
				mappedStatement.getConfiguration(), countSql,
				parameterMappings, page);
		ParameterHandler parameterHandler = new DefaultParameterHandler(
				mappedStatement, page, countBoundSql);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = connection.prepareStatement(countSql);
			parameterHandler.setParameters(pstmt);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				int totalRecord = rs.getInt(1);
				page.setTotalRecord(totalRecord);
			}
		} catch (SQLException e) {
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	private String getCountSql(String sql) {
		int index = sql.toUpperCase().indexOf("FROM");
		int lastIndex = sql.lastIndexOf("order");
		return "select count(1) " + sql.substring(index, lastIndex);
	}
}
