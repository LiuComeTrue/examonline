package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.student;
import bean.teacher;
import dao.TestDAO;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String Result="0";
		int result=0;
		String type = request.getParameter("type");
		TestDAO tdao = DaoFactory.gettestdao();
		if(type.equals("teacher")) {
			teacher	user = new teacher();
			user.setTid(request.getParameter("id"));
			user.setTname(request.getParameter("name"));
			user.setSex(request.getParameter("sex"));
			user.setCardnumber(request.getParameter("IDcard"));
			user.setPhone(request.getParameter("phone"));
			user.setTitle(request.getParameter("title"));
			user.setPwd("12345");
			
			result=tdao.saveteacher(user);
		}else if(type.equals("student")) {
			student	user = new student();
			user.setSid(request.getParameter("id"));
			user.setSname(request.getParameter("name"));
			user.setSex(request.getParameter("sex"));
			user.setCardnumber(request.getParameter("IDcard"));
			user.setPhone(request.getParameter("phone"));
			user.setDepartment(request.getParameter("title"));
			user.setPwd("12345");
			
			result=tdao.savestudent(user);
		}
		
		if(result!=0){
			Result="OK";
		}else
			Result="NO";

		request.getRequestDispatcher("./jsp/addUser.jsp?Result="+Result).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
