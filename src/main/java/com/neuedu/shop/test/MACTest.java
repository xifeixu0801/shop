/**
 * 
 */
package com.neuedu.shop.test;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.alibaba.fastjson.JSONObject;

/**
 * @author ��ϰ��
 * @date 2020��5��14������12:00:20
 * ������֤�����
 */
public class MACTest {
	public static void main(String[] args) {
		// ��ȡ����
		HttpClient client = new HttpClient();
		// ������֤��API�ӿڵ�ַ
		PostMethod method = new PostMethod("https://vip.veesing.com/smsApi/verifyCode");
		// ���ñ���
		client.getParams().setContentCharset("UTF-8");
		method.setRequestHeader("ContentType", "application/x-www-form-urlencoded;charset=utf-8");
		// �ֻ����룬һ��ֻ���ύһ���ֻ�����
		String phone = "18222956514";
		// ģ��ID(��û��ģ��ID������ƽ̨���������ύ��֤��ģ�壬���ͨ������ʹ��)
		String templateId = "832";
		// ��֤�����(�����)
		Integer num = (int) ((Math.random() * 9 + 1) * 100000);
		String variables = num.toString();
		System.out.println("��֤���ǣ�" + variables);
		// ƴ�Ӳ���
		NameValuePair[] data = { new NameValuePair("appId", "06BUPVK86RBY"), new NameValuePair("appKey", "DQ48RF4LNZLC3Y00"),
				new NameValuePair("phone", phone), new NameValuePair("templateId", templateId),
				new NameValuePair("variables", variables) };
		method.setRequestBody(data);
		try {
			client.executeMethod(method);
			String result = method.getResponseBodyAsString();
			// ���ؽ��
			System.out.println(result);
			JSONObject jsonObject = JSONObject.parseObject(result);
			// ����1���ͳɹ�(�߼���������ݽӿ��ĵ����ز��������ж�)
			if (jsonObject.get("returnStatus").equals("1")) {
				System.out.println("�ɹ���");
			} else {
				System.out.println("ʧ�ܣ�");
			}
			// �ͷ�����
			method.setRequestHeader("Connection", "close");
			method.releaseConnection();
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
