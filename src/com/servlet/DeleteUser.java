package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestDAO;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		int page = Integer.valueOf(request.getParameter("page"));
		String key = request.getParameter("key");
		String selectStyle = request.getParameter("selectStyle");
		String id = request.getParameter("id");
		TestDAO tdao = DaoFactory.gettestdao();
		if (type.equals("Teacher")) {
			tdao.deleteteacher(id);
		} else {
			tdao.deletestudent(id);
		}
		request.getRequestDispatcher("./ShowUserInfo?page=" + page + "&type=" + type + "&key=" + key + "&selectStyle=" + selectStyle).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
