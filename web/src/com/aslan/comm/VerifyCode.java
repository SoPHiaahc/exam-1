package com.aslan.comm;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;



public class VerifyCode {
	
	
	
	private int w = 70;
	private int h = 35;
	
	private Random r = new Random();
	private String[] fontNames = {"宋体","华文楷体","黑体","微软雅黑","楷体_GB2312"};
	//��ѡ�ַ�
	private String codes = "234567890abcdefghijklmnopqrstuvwxyz";
	private Color bgColor = new Color(255,255,255);
	
	//��֤��������ı�
	private String text;
	
	
	
	
	private Color randomColor()
	{
		int red = r.nextInt(150);
		int green = r.nextInt(150);
		int blue = r.nextInt(150);
		
		return new Color(red,green,blue);
	}
	
	//�����������
	private Font randomFont()
	{
		int index = r.nextInt(fontNames.length);
		String fontName = fontNames[index];
		
		int style = r.nextInt(4);
		int size = r.nextInt(5) + 24;
		
		return new Font(fontName,style,size);
	}
	
	
	//����ͼƬ
	public BufferedImage getImage()
	{

		BufferedImage image = createImage();
		Graphics2D g = (Graphics2D)image.getGraphics(); //�õ����ƻ���
		
		StringBuilder sb = new StringBuilder();
		g.setColor(Color.RED); //�ѻ�������Ϊ��ɫ

		for(int i = 0 ; i < 4 ; i++)
		{
			String s = randomChar() + "";
			
			sb.append(s);
			float x = i * 1.0F * w/4;
			g.setFont(randomFont());
			g.setColor(randomColor());

			g.drawString(s, x, 33); //��ͼ
		}

		System.out.println(sb);
		
		this.text = sb.toString();
		drawLine(image);//��Ӹ�����
		
		return image;
	}
	
	public String getText() {
		return text;
	}
	
	
	//��������ַ�
	private char randomChar() {
		int index = r.nextInt(codes.length());
		return codes.charAt(index);
	}
	
	//����ͼƬ
	private BufferedImage createImage() {
		BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics2D graphics2d = (Graphics2D)image.getGraphics();
		graphics2d.setColor(this.bgColor);
		graphics2d.fillRect(0, 0, w, h);
		
		return image;
	}
	
	//��������
	private void drawLine(BufferedImage image) {
		int num = 4;//һ����3��
		Graphics2D graphics2d = (Graphics2D)image.getGraphics();
		
		for(int i = 0 ; i < num; i++)
		{
			int x1 = r.nextInt(w);
			int y1 = r.nextInt(h);
			int x2 = r.nextInt(w);
			int y2 = r.nextInt(h);
			
			graphics2d.setStroke(new BasicStroke(1.5F));
			graphics2d.setColor(Color.BLUE);
			graphics2d.drawLine(x1, y1, x2, y2);
		}
		
	}
	
	
	//����ͼƬ
	public static void  output(BufferedImage image,OutputStream out) throws Exception {
		
		ImageIO.write(image, "JPEG", out);
		
	}

	

	

	
}
