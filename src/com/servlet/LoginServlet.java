package com.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TestDAO;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String id = request.getParameter("userid");
		String password = request.getParameter("password");
		TestDAO tdao = DaoFactory.gettestdao();
		String type = request.getParameter("Type");
		HttpSession session = request.getSession();
		
		request.removeAttribute("Result");
		
		if (type.equals("student")) {
			String stuName = tdao.studentLogin(id, password);		
			if (stuName.equals("null")) {
				request.setAttribute("flag", "1");
				request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
				System.out.println("account null");
			} else {
				request.setAttribute("flag", "2");
				String IDCard = tdao.searchcardnumber(id, password);			
				session.setAttribute("stuID", id);
				session.setAttribute("stuName", stuName);
				session.setAttribute("IDCard", IDCard);
				session.setAttribute("PassWord", password);
				if (tdao.existtime() != 0) {
					String startTime = tdao.searchStime();
					startTime = startTime.substring(0, startTime.length() - 2);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
					try {
						startTime = df.format(sdf.parse(startTime));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//考试开始时间
					session.setAttribute("startTime", startTime);
				} else {
					request.setAttribute("noTEST", "noTEST");
				}			
				//是否已经考过试
				String aTest = tdao.searchscore(id);
				if (!aTest.equals("null"))
					request.setAttribute("aTest", "alearlyTest");
				request.getRequestDispatcher("./jsp/stuMenu.jsp").forward(request, response);
				//response.sendRedirect(request.getContextPath() + "/jsp/stuMenu.jsp");
			}
		} else if (type.equals("teacher")) {
			String tName = tdao.teacherLogin(id, password);
			if (tName.equals("null")) {
				request.setAttribute("flag", "1");
				request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
				System.out.println("account null");
			} else {
					
				session.setAttribute("tName", tName);
				session.setAttribute("tID", id);
				session.setAttribute("loginType", type);
				session.setAttribute("PassWord", password);
				response.sendRedirect(request.getContextPath()+"/teacher.html");
			}
		} else {
			String adminName = tdao.adminLogin(id, password);
			if (adminName.equals("null")) {
				request.setAttribute("flag", "1");
				request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
				System.out.println("account null");
			} else {
				session.setAttribute("aName", adminName);
				session.setAttribute("aID", id);
				session.setAttribute("loginType", type);
				session.setAttribute("PassWord", password);
				response.sendRedirect(request.getContextPath()+"/admin.html");
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
