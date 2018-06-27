package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.service.UpGradeService;

public class UpGradeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		request.setCharacterEncoding("utf-8");
		Object grade = request.getParameter("grade");
		String tid =  request.getParameter("tid");
		String sid = request.getParameter("sid");
		String cname = request.getParameter("cname");
		request.setAttribute("tid", tid);
		UpGradeService service = new UpGradeService();
		try {
			service.UpGrade(sid,cname,grade);
			request.getRequestDispatcher("/AllStuGradeServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
