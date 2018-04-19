package com.servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ShowUserInfo
 */
@WebServlet("/ShowUserInfo")
public class ShowUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowUserInfo() {
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
		int page = Integer.valueOf(request.getParameter("page"));
		String type = request.getParameter("type");
		String key = request.getParameter("key");
		String selectStyle = request.getParameter("selectStyle");
		request.setAttribute("type", type);
		request.setAttribute("key", key);
		request.setAttribute("page", page);
		request.setAttribute("selectStyle", selectStyle);
		TestDAO tdao = DaoFactory.gettestdao();
		StringBuffer sb = new StringBuffer();
		if (type.equals("Teacher")) {
			sb.append("<table class=\"table table-hover table-bordered\">");
			sb.append("<caption><span id=\"titleChange\">教师用户信息</span></caption>");
			sb.append("<thead><tr><th>教工号</th><th>姓名</th><th>性别</th><th>身份证号</th>");
			sb.append("<th>职称</th><th>密码</th><th>电话号码</th><th>操作</th></tr></thead>");

			List<teacher> list = tdao.searchteacher(key, selectStyle, page);
			for (int i = 0; i < list.size(); i++) {
				sb.append("<tr><td>");
				sb.append(list.get(i).getTid());
				sb.append("</td><td>");
				sb.append(list.get(i).getTname());
				sb.append("</td><td>");
				sb.append(list.get(i).getSex());
				sb.append("</td><td>");
				sb.append(list.get(i).getCardnumber());
				sb.append("</td><td>");
				sb.append(list.get(i).getTitle());
				sb.append("</td><td>");
				sb.append(list.get(i).getPwd());
				sb.append("</td><td>");
				sb.append(list.get(i).getPhone());
				sb.append("</td><td>");
				sb.append("<form action=\"DeleteUser?type=" + type + "&id=" + list.get(i).getTid() + "&page=" + page + "&key=" + key + "&selectStyle=" + selectStyle + "\" method=\"post\" onsubmit=\"return checkDelete()\">");
				sb.append("<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#myModal1\" type=\"button\" onclick=\"editTest(this)\">修改</button>");
				sb.append("<button class=\"btn btn-primary\" type=\"submit\">删除</button></form></td></tr>");
			}
			//总页数
			int pages = tdao.searchteaallpage(key, selectStyle);
			//总人数
			int counts = tdao.findtea(key, selectStyle);
			sb.append("</table><div><span>共");
			sb.append(pages);
			sb.append("页");
			sb.append(counts);
			sb.append("个用户</span>&nbsp;&nbsp;");
			sb.append("<label><a href=\"./ShowUserInfo?page=1&type=Teacher&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">首页</a></label>&nbsp;");
			int last = page - 1;
			if (last <= 0)
				last = 1;
			sb.append("<label><a href=\"./ShowUserInfo?page=" + last + "&type=Teacher&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">上一页</a></label>&nbsp;");
			int next = page + 1;
			if (next > pages)
				next = pages;
			sb.append("<label><a href=\"./ShowUserInfo?page=" + next + "&type=Teacher&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">下一页</a></label>&nbsp;");
			sb.append("<label><a href=\"./ShowUserInfo?page=" + pages + "&type=Teacher&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">尾页</a></label>&nbsp;&nbsp;");
			sb.append("<span>当前第");
			sb.append(page);
			sb.append("页</span></div>");

		} else {
			sb.append("<table class=\"table table-hover table-bordered\">");
			sb.append("<caption><span id=\"titleChange\">学生用户信息</span></caption>");
			sb.append("<thead><tr><th>学号</th><th>姓名</th><th>性别</th><th>身份证号</th>");
			sb.append("<th>系别</th><th>密码</th><th>电话号码</th><th>操作</th></tr></thead>");

			List<student> list = tdao.searchstudent(key, selectStyle, page);
			for (int i = 0; i < list.size(); i++) {
				sb.append("<tr><td>");
				sb.append(list.get(i).getSid());
				sb.append("</td><td>");
				sb.append(list.get(i).getSname());
				sb.append("</td><td>");
				sb.append(list.get(i).getSex());
				sb.append("</td><td>");
				sb.append(list.get(i).getCardnumber());
				sb.append("</td><td>");
				sb.append(list.get(i).getDepartment());
				sb.append("</td><td>");
				sb.append(list.get(i).getPwd());
				sb.append("</td><td>");
				sb.append(list.get(i).getPhone());
				sb.append("</td><td>");
				sb.append("<form action=\"DeleteUser?type=" + type + "&id=" + list.get(i).getSid() + "&page=" + page + "&key=" + key + "&selectStyle=" + selectStyle + "\" method=\"post\" onsubmit=\"return checkDelete()\">");
				sb.append("<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#myModal1\" type=\"button\" onclick=\"editTest(this)\">修改</button>");
				sb.append("<button class=\"btn btn-primary\" type=\"submit\">删除</button></form></td></tr>");
			}
			//总页数
			int pages = tdao.searchstuallpage(key, selectStyle);
			//总人数
			int counts = tdao.findstu(key, selectStyle);
			sb.append("</table><div><span>共");
			sb.append(pages);
			sb.append("页");
			sb.append(counts);
			sb.append("个用户</span>&nbsp;&nbsp;");
			sb.append("<label><a href=\"./ShowUserInfo?page=1&type=Student&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">首页</a></label>&nbsp;");
			int last = page - 1;
			if (last <= 0)
				last = 1;
			sb.append("<label><a href=\"./ShowUserInfo?page=" + last + "&type=Student&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">上一页</a></label>&nbsp;");
			int next = page + 1;
			if (next > pages)
				next = pages;
			sb.append("<label><a href=\"./ShowUserInfo?page=" + next + "&type=Student&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">下一页</a></label>&nbsp;");
			sb.append("<label><a href=\"./ShowUserInfo?page=" + pages + "&type=Student&key=" + key + "&selectStyle=" + selectStyle + "\" class=\"abtn\">尾页</a></label>&nbsp;&nbsp;");
			sb.append("<span>当前第");
			sb.append(page);
			sb.append("页</span></div>");
		}
		request.setAttribute("UserTable", sb);
		request.getRequestDispatcher("./jsp/personManage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
