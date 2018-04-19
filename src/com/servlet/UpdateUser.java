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
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		TestDAO tdao = DaoFactory.gettestdao();
		if (type.equals("Teacher")) {
			teacher t = new teacher();
			t.setTid(request.getParameter("ID"));
			t.setTname(request.getParameter("name"));
			t.setSex(request.getParameter("sex"));
			t.setCardnumber(request.getParameter("IDcard"));
			t.setPwd(request.getParameter("pwd"));
			t.setTitle(request.getParameter("perType"));
			t.setPhone(request.getParameter("phone"));
			tdao.updateteacher(t);
		} else {
			student s = new student();
			s.setSid(request.getParameter("ID"));
			s.setSname(request.getParameter("name"));
			s.setSex(request.getParameter("sex"));
			s.setCardnumber(request.getParameter("IDcard"));
			s.setPwd(request.getParameter("pwd"));
			s.setDepartment(request.getParameter("perType"));
			s.setPhone(request.getParameter("phone"));
			tdao.updatestudent(s);
		}
		request.setAttribute("type", type);
		request.setAttribute("key", key);
		request.setAttribute("page", page);
		request.setAttribute("selectStyle", selectStyle);
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
