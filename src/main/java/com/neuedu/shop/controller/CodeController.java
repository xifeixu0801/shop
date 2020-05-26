/**
 * 
 */
package com.neuedu.shop.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author ��ϰ��
 * @date 2020��5��8������3:20:06
 */
@Controller
public class CodeController {

	public static final int WIDTH = 100;// ���ɵ�ͼƬ�Ŀ��
	public static final int HEIGHT = 22;// ���ɵ�ͼƬ�ĸ߶�

	@RequestMapping(value = "/back/code.code", method = RequestMethod.GET)
	public void Code(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		// ���ڴ��д���һ��ͼƬ
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		// �õ�ͼƬ
		Graphics g = bi.getGraphics();
		// ����ͼƬ����ɫ
		Color c = new Color(200, 150, 255);
		g.setColor(c);// ������ɫ
		g.fillRect(0, 0, WIDTH, HEIGHT);// ������
		// �������塢�ֺ�
		g.setFont(new Font("΢���ź�", Font.BOLD, 16));
		// ��ĸ������ϣ�
		char[] ch = "ABCDEFGHIJKLMNOPQRSTUVEXYZ0123456789abcdefghijklmnopqrstuvwxyz".toCharArray();

		Random r = new Random();
		int len = ch.length;
		int index;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 5; i++) {
			index = r.nextInt(len);// ������һ����ʼλ��
			g.setColor(new Color(r.nextInt(88), r.nextInt(188), r.nextInt(255)));// ������һ���������ɫ
			g.drawString(ch[index] + "", (i * 18) + 8, 16);
			sb.append(ch[index]);
			g.drawLine(r.nextInt(80), r.nextInt(40), r.nextInt(80), r.nextInt(40));
		}
System.out.println(sb.toString());
		// �����ɵ���֤��󶨵�session��
		request.getSession().setAttribute("checkcode", sb.toString());// ����������֤�뱣���������Ա�֮��ļ��������Ƿ�һ��
		ImageIO.write(bi, "JPG", response.getOutputStream());
	}
}
