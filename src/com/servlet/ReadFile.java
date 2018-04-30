package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import bean.choicequestion;
import bean.fillquestion;
import dao.TestDAO;
import dao.factory.DaoFactory;

public class ReadFile {

	private String fileName;
	public ReadFile(String fileName) {
		this.fileName = fileName;
	}
	//打开选择题文件并存入数据库
	public int readChoiceFile() throws IOException {
		int result = 0;
		//System.out.println(fileName);
		//File f=new File("C:\\Users\\ZC\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\examOnline\\upload\\" + fileName);
		File f = new File("D:\\" + fileName);
		FileInputStream in;  
		in = new FileInputStream(f);  
		BufferedReader br=new BufferedReader(new InputStreamReader(in,"GBK"));  	          
		String line=null;  
		br.mark((int) f.length());
		while(!(line=br.readLine()).equals("答案")) {
			;
		}
		line = br.readLine();
		String[] answer=line.trim().split(" +");
		//for (int i = 0; i < answer.length; i++)
		//	System.out.println(answer[i]);
		
		br.reset();
		choicequestion cq = new choicequestion();
		int flag = 1;
		int i = 0;
		while(!(line=br.readLine()).equals("答案")) {
			//System.out.println(line);
			if (flag % 2 == 1) {
				line = line.substring(2, line.length());
				cq.setC_question(line.trim());
			} else {
				String[] choice = line.trim().split("\\s\\s+");
				cq.setC_choiceA(choice[0].trim());
				cq.setC_choiceB(choice[1].trim());
				cq.setC_choiceC(choice[2].trim());
				cq.setC_choiceD(choice[3].trim());
				cq.setC_answer(answer[i++].trim());
				/*System.out.println(cq.getC_question());
				System.out.println(cq.getC_choiceA());
				System.out.println(cq.getC_choiceD());
				System.out.println(cq.getC_answer());*/
				TestDAO tdao = DaoFactory.gettestdao();
				result = tdao.savechoiceq(cq);
			}
			flag++;			
		}
		br.close();  
		in.close();	
		return result;
	}
	//打开填空题文件并存入数据库
	public int readFillFile() throws IOException {
		int result = 0;
		//File f=new File("C:\\Users\\ZC\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\examOnline\\upload\\" + fileName);
		File f = new File("D:\\" + fileName);
		FileInputStream in;  
		in = new FileInputStream(f);  
		BufferedReader br=new BufferedReader(new InputStreamReader(in,"GBK"));  	          
		String line=null;  
		fillquestion fq = new fillquestion();
		int flag = 1;
		while((line=br.readLine()) != null) {
			//System.out.println(line);
			if (flag % 2 == 1) {
				line = line.substring(2, line.length());
				fq.setF_question(line.trim());
			} else {
				fq.setF_answer(line.trim());
				//System.out.println(fq.getF_question());
				//System.out.println(fq.getF_answer());

				TestDAO tdao = DaoFactory.gettestdao();
				result = tdao.savefillq(fq);
			}
			flag++;			
		}
		br.close();  
		in.close();	
		return result;
	}
}
