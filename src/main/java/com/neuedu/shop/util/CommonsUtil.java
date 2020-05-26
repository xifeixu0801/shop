/**
 * 
 */
package com.neuedu.shop.util;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

/**
 * @author ��ϰ��
 * @date 2020��5��8������10:32:29
 */
public class CommonsUtil {
	private CommonsUtil() {
	}

	/**
	 * �ǳ��򵥵�md5���ܷ���
	 */
	public static String transformToMD5(String password) {
		// ����һ��MD5����ժҪ
//		try {
//			MessageDigest md = MessageDigest.getInstance("MD5");
			// ����md5����
//			md.update(password.getBytes());
			// ����BigInteger����
			// digest()ȷ������MD5��Hashֵ������ֵΪ8λ�ַ���
			// BigInteger��8λ���ַ���ת��Ϊ16λ��ʮ��������
			//
//			return new BigInteger(1, md.digest()).toString(16);
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//		}
//		return null;
		byte[] hash;
        try {
            hash = MessageDigest.getInstance("MD5").digest(password.getBytes("UTF-8"));
        } catch (NoSuchAlgorithmException var7) {
            throw new RuntimeException("MD5 should be supported?", var7);
        } catch (UnsupportedEncodingException var8) {
            throw new RuntimeException("UTF-8 should be supported?", var8);
        }
 
        StringBuilder hex = new StringBuilder(hash.length * 2);
        byte[] var6 = hash;
        int var5 = hash.length;
 
        for(int var4 = 0; var4 < var5; ++var4) {
            byte b = var6[var4];
            if((b & 255) < 16) {
                hex.append("0");
            }
            hex.append(Integer.toHexString(b & 255));
        }
 
        return hex.toString();


	}

	public static void main(String[] args) {
		for (int i = 0; i < 10000; i++) {
			System.out.println(CommonsUtil.transformToMD5(new Random().nextInt(999999) + "").length());
		}

	}
	
	
	/**
	 * �ļ��ϴ���ؾ�̬���������ؿ������ϴ����������洢����������
	 * 
	 */
	
	public static void fileCypeToLocal(String srcPath,String destPath) {
		// ����Դ�ļ�
		File src = new File(srcPath);
		File dest = new File(destPath);
		try {
			// ���б��ؿ���	
			Files.copy(src.toPath(), dest.toPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
