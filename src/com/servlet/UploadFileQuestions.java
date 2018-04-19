package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import dao.TestDAO;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class UploadFileQuestions
 */
@WebServlet("/UploadFileQuestions")
public class UploadFileQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFileQuestions() {
        super();
        // TODO Auto-generated constructor stub
    }
    ServletConfig servletconfig;
	
	public void init(ServletConfig config) throws ServletException {
		this.servletconfig = config;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		SmartUpload smartUpload = new SmartUpload();
	    //上传初始化
	    smartUpload.initialize(servletconfig,request,response);
	    try {
		      //设定上传限制
		      //限制每个上传文件的最大长度;将最大设定为1024*1024*20
		      smartUpload.setMaxFileSize(1024*1024*10);   
		      //限制总上传数据的长度
		      smartUpload.setTotalMaxFileSize(1024*1024*20);
		      //限制允许上传的文件类型、允许doc、txt文件
		      smartUpload.setAllowedFilesList("doc,txt,docx");
		      //限制禁止上传的文件类型,禁止exe、jsp、和没有扩展名的文件
		      smartUpload.setDeniedFilesList("exe,jsp,,");
		      //上传文件
		      smartUpload.upload();	      
		      //smartUpload.save(path);
	    } catch (SQLException e) {
		      e.printStackTrace();
		} catch (SmartUploadException e) {
		      e.printStackTrace();
		}
	    long d = new Date().getTime();
	    Files files = smartUpload.getFiles();
	    File file = files.getFile(0);
	    String fileName = String.valueOf(d) + "." + file.getFileExt();
	    String path = "/upload/" + fileName;
	    //将文件保存到指定的目录下
	    try {
			file.saveAs(path);
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    Request r = smartUpload.getRequest();
		String type = r.getParameter("type1");
		ReadFile rf = new ReadFile(fileName);
		if (type.equals("Choice")) {   
            if (rf.readChoiceFile() != 0) {
            	request.setAttribute("upload", "upload");
				request.getRequestDispatcher("./jsp/upload.jsp").forward(request, response);
		    } else {
		    	request.setAttribute("uploadFail", "uploadFail");
				request.getRequestDispatcher("./jsp/upload.jsp").forward(request, response);
		    }
		} else {
			if (rf.readFillFile() != 0) {
				request.setAttribute("upload", "upload");
				request.getRequestDispatcher("./jsp/upload.jsp").forward(request, response);
		    } else {
		    	request.setAttribute("uploadFail", "uploadFail");
				request.getRequestDispatcher("./jsp/upload.jsp").forward(request, response);
		    }
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
