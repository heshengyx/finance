package com.myself.finance.test;

import java.text.DecimalFormat;
import java.text.ParseException;

import com.myself.common.utils.MoneyUtil;


public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		DecimalFormat decimalFormat = new DecimalFormat("######.00");
		try {
			double amt = decimalFormat.parse("100.23").doubleValue();
			System.out.println("amt===" + MoneyUtil.toLong("100.232"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
