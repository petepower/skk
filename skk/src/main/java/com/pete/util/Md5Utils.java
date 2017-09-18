package com.pete.util;

import java.security.MessageDigest;

/**
 * md5 加密工具类
 * 附带另外一种作用不大的两次加密得出原始值。
 * @author peter
 * @time 2017年9月11日 下午10:17:08
 */
public class Md5Utils {
	
	/**
	 * 将字符串转换成md5值
	 * @param inStr
	 * @return
	 * @time 2017年9月11日 下午10:10:44
	 * @author peter
	 */
	public static String string2MD5(String string) {
		
		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			return "";
		}
		char[] charArray = string.toCharArray();
		byte[] byteArray = new byte[charArray.length];

		for (int i = 0; i < charArray.length; i++)
			byteArray[i] = (byte) charArray[i];
		byte[] md5Bytes = md5.digest(byteArray);
		StringBuffer hexValue = new StringBuffer();
		for (int i = 0; i < md5Bytes.length; i++) {
			int val = ((int) md5Bytes[i]) & 0xff;
			if (val < 16)
				hexValue.append("0");
			hexValue.append(Integer.toHexString(val));
		}
		return hexValue.toString();

	}

	/**
	 * 将字符串转换成md5值，执行一次加密，两次解密得出原始值
	 * @param inStr
	 * @return
	 * @time 2017年9月11日 下午10:15:30
	 * @author peter
	 */
	public static String convertMD5(String inStr) {

		char[] a = inStr.toCharArray();
		for (int i = 0; i < a.length; i++) {
			a[i] = (char) (a[i] ^ 't');
		}
		String s = new String(a);
		return s;

	}

	// 测试主函数
	public static void main(String args[]) {
		String s = new String("pepepep");
		System.out.println("原始：" + s);
		String md5value = string2MD5(s);
		System.out.println("MD5后：" + md5value);
		System.out.println("加密的：" + convertMD5(s));
		System.out.println("解密的：" + convertMD5(convertMD5(s)));

	}
}
