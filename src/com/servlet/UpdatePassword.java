package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TestDAO;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class UpdatePassword
 */
@WebServlet("/UpdatePassword")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String ID = request.getParameter("id");
		String type = request.getParameter("type");
		String Password = request.getParameter("newPassword");
		
		TestDAO tdao = DaoFactory.gettestdao();
		int result = 0;
		if(type.equals("Student")) {
			result = tdao.updatespwd(ID, Password);
		}else if(type.equals("teacher")) {
			result = tdao.updatetpwd(ID, Password);
		}else if(type.equals("admin")) {
			result = tdao.updateapwd(ID, Password);
		}
		String Result="0";
		HttpSession session = request.getSession();
		if(result!=0){
			session.setAttribute("PassWord", Password);
			Result="OK";
		}else
			Result="NO";
		if(type.equals("Student"))
			request.getRequestDispatcher("./jsp/stuMenu.jsp?Result="+Result).forward(request, response);
		else if(type.equals("teacher")||type.equals("admin"))
			request.getRequestDispatcher("./jsp/updatePwd.jsp?Result="+Result).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
