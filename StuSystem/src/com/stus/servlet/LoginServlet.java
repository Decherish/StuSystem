package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Student;
import com.stus.bean.Teacher;
import com.stus.service.loginservice;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		loginservice loginservice = new loginservice();
		try {
			if (id.length()>6) {
				Student student = loginservice.login(id);
				request.getRequestDispatcher("/Student.jsp").forward(request,response);
			}else if(id.length()<6){
				Teacher teacher = loginservice.login1(id);
				request.getRequestDispatcher("/Teacher.jsp").forward(request, response);
			}else {
				response.sendRedirect("/index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
