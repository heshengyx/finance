Date.prototype.format = function(format) //author: meizz
{ 
  var o = {
    "M+" : this.getMonth()+1, //month
    "d+" : this.getDate(),    //day
    "h+" : this.getHours(),   //hour
    "m+" : this.getMinutes(), //minute
    "s+" : this.getSeconds(), //second
    "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
    "S" : this.getMilliseconds() //millisecond
  }
  if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
    (this.getFullYear()+"").substr(4 - RegExp.$1.length));
  for(var k in o)if(new RegExp("("+ k +")").test(format))
    format = format.replace(RegExp.$1,
      RegExp.$1.length==1 ? o[k] :
        ("00"+ o[k]).substr((""+ o[k]).length));
  return format;
} 

//银行卡号格式化
var cardNO = function(value){
	return value.replace(/(?=(?:\d{4})+(?!\d))/g,' ');
}
//格式化金额
var fmoney = function(s){
   // s = s/100;
   n = 2;  
   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";  
   var l = s.split(".")[0].split("").reverse(),  
   r = s.split(".")[1];  
   t = "";  
   for(var i = 0; i < l.length; i ++ )  
   {  
      t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");  
   }  
   return "￥"+t.split("").reverse().join("") + "." + r;  
}  
//格式化金额
var money = function(s){
   // s = s/100;
   n = 2;  
   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";  
   var l = s.split(".")[0].split("").reverse(),  
   r = s.split(".")[1];  
   t = "";  
   for(var i = 0; i < l.length; i ++ )  
   {  
      t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");  
   }  
   return t.split("").reverse().join("") + "." + r;  
}
//格式化金额
var jmoney = function(s){ 
   s = s/100;
   n = 2;  
   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";  
   var l = s.split(".")[0].split("").reverse(),  
   r = s.split(".")[1];  
   t = "";  
   for(var i = 0; i < l.length; i ++ )  
   {  
      t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");  
   }  
   var forma = t.split("").reverse().join("") + "." + r;
   var formb;
   if(forma.substring(0,1)=="-"){
	   if(forma.substring(1,2)==","){
		   formb = forma.substring(2, forma.length);
		   return "-"+formb;
	   }else{
		   return forma; 
	   }
	   
   }else{
	   return forma;  
   } 
}
//格式化金额
var fmoney_1 = function (cellvalue){
    if(cellvalue != null && cellvalue != ""){
   	   return fmoney(cellvalue);
    }else{
 	   return "";
    }
 }
 
var to_date_hms = function (s){
	if(s==null){
		return "";
	}
	return new Date(s).format("yyyy-MM-dd hh:mm:ss");
}

var to_date_hm = function (s){
	if(s==null){
		return "";
	}
	return new Date(s).format("yyyy-MM-dd hh:mm");
}

var to_hms = function (s){
	if(s==null){
		return "";
	}
	return new Date(s).format("hh:mm:ss");
}

var to_format = function (s){
	if(s==null){
		return "";
	}
	return s;
}

var to_date = function (s){
	if(s==null){
		return "";
	}
	return new Date(s).format("yyyy-MM-dd");
}

function digit_uppercase(n) {
    var fraction = ['角', '分'];
    var digit = [
        '零', '壹', '贰', '叁', '肆',
        '伍', '陆', '柒', '捌', '玖'
    ];
    var unit = [
        ['元', '万', '亿'],
        ['', '拾', '佰', '仟']
    ];
    var head = n < 0? '负': '';
    n = Math.abs(n);

    var s = '';

    for (var i = 0; i < fraction.length; i++) {
        s += (digit[Math.floor(n * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');
    }
    s = s || '整';
    n = Math.floor(n);

    for (var i = 0; i < unit[0].length && n > 0; i++) {
        var p = '';
        for (var j = 0; j < unit[1].length && n > 0; j++) {
            p = digit[n % 10] + unit[1][j] + p;
            n = Math.floor(n / 10);
        }
        s = p.replace(/(零.)*零$/, '')
             .replace(/^$/, '零')
          + unit[0][i] + s;
    }
    return head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');
};

/**
 * 卡号格式化
 */
var cardFormat = function(cardNo){
	if(!cardNo) {
		return '';
	}
	var no = [], start = 0, len = cardNo.length-4;
	while(start <= len) {
		no.push(cardNo.substring(start, start+4));
		no.push('&nbsp;');
		start += 4;
	}
	return no.join('');
};

var checkIdCard = function(idcard){
		var area = {11 : "北京", 12 : "天津", 13 : "河北", 14 : "山西", 15 : "内蒙古", 21 : "辽宁", 22 : "吉林",  
	            23 : "黑龙江", 31 : "上海", 32 : "江苏", 33 : "浙江", 34 : "安徽", 35 : "福建", 36 : "江西",   
	            37 : "山东", 41 : "河南", 42 : "湖北", 43 : "湖南", 44 : "广东", 45 : "广西", 46 : "海南",  
	            50 : "重庆", 51 : "四川", 52 : "贵州", 53 : "云南", 54 : "西藏", 61 : "陕西", 62 : "甘肃",  
	            63 : "青海", 64 : "宁夏", 65 : "新疆", 71 : "台湾", 81 : "香港", 82 : "澳门", 91 : "国外" };
		var result = new Array("0", "身份证长度必须为15或18位!", "身份证出生日期超出范围或含有非法字符!",  
		    "身份证校验位错误!", "身份证地区非法!");  
		var  Y, JYM;  
		var S, M;  
		var idcard_array = new Array();  
		idcard_array = idcard.split("");  
		// 地区检验  
		if (area[parseInt(idcard.substr(0, 2))] == null)  
		return result[4];  
		// 身份号码位数及格式检验  
		switch (idcard.length) {  
		case 15 :  
		    if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0  
		            || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(idcard.substr(6, 2)) + 1900)% 4 == 0)) {  
		        ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;  
		        // 测试出生日期的合法性  
		    } else {  
		        ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;  
		        // 测试出生日期的合法性  
		    }  
		    if (ereg.test(idcard))  
		        return result[0];  
		    else {  
		        return result[2];  
		    }  
		    break;  
		case 18 :  
		    // 18位身份号码检测  
		    // 出生日期的合法性检查  
		    // 闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))  
		    // 平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))  
		    if (parseInt(idcard.substr(6, 4)) % 4 == 0  
		            || (parseInt(idcard.substr(6, 4)) % 100 == 0 && parseInt(idcard.substr(6, 4))% 4 == 0)) {  
		        ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;// 闰年出生日期的合法性正则表达式  
		    } else {  
		        ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;// 平年出生日期的合法性正则表达式  
		    }  
		    if (ereg.test(idcard)) {// 测试出生日期的合法性  
		    // 计算校验位  
		        S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10]))* 7  
		            + (parseInt(idcard_array[1]) + parseInt(idcard_array[11]))* 9  
		            + (parseInt(idcard_array[2]) + parseInt(idcard_array[12]))* 10  
		            + (parseInt(idcard_array[3]) + parseInt(idcard_array[13]))* 5  
		            + (parseInt(idcard_array[4]) + parseInt(idcard_array[14]))* 8  
		            + (parseInt(idcard_array[5]) + parseInt(idcard_array[15]))* 4  
		            + (parseInt(idcard_array[6]) + parseInt(idcard_array[16]))* 2  
		            + parseInt(idcard_array[7]) * 1  
		            + parseInt(idcard_array[8]) * 6  
		            + parseInt(idcard_array[9]) * 3;  
		        Y = S % 11;  
		        M = "F";  
		        JYM = "10X98765432";  
		        M = JYM.substr(Y, 1);// 判断校验位  
		        if (M == idcard_array[17].toUpperCase())  
		            return result[0]; // 检测ID的校验位  
		        else  
		            return result[3];  
		    } else  
		        return result[2];  
		    break;  
		default :  
		    return result[1];  
		    break;  
		}  
};
