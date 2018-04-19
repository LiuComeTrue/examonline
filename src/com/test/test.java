package com.test;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.servlet.ReadFile;

import bean.choicequestion;
import bean.fillquestion;
import bean.student;
import bean.stuscore;
import dao.factory.DaoFactory;
import dao.TestDAO;

public class test {
	public static void main(String srgs[])
	{
		String sid="1";
		//String score="100";
		/*student s=new student();
		s.setSid("002");
		s.setSname("alice");
		s.setSex("man");
		s.setCardnumber("6465465");
		s.setPwd("456789");
		s.setDepartment("666");
		s.setPhone("1313464646");
		TestDAO tdao=DaoFactory.gettestdao();
		String a=tdao.searchscore(sid);
		System.out.println(a);*/
		
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//设置日期格式
		System.out.println(new Date());
		System.out.println(df.format(new Date()));
		String a = df.format(new Date());
		try {
			Date d = df.parse(a);
			Date e = df.parse("2018-04-14 11:37:37");
			System.out.println(df.format(e));
			if (d.before(e))
				System.out.println("before");
			else
				System.out.println("after");
			
			Calendar rightNow = Calendar.getInstance();
	        rightNow.setTime(e);
	        rightNow.add(Calendar.MINUTE,30);
	        Date dt1=rightNow.getTime();
	        System.out.println(df.format(dt1));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		TestDAO tdao = DaoFactory.gettestdao();
		List<stuscore> list = tdao.findscore();
		
		
	}
}
