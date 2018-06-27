package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Grade;
import com.stus.service.AllStuGradeService;

public class AllStuGradeServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String tid = request.getParameter("tid");
		request.setAttribute("tid", tid);
		AllStuGradeService service = new AllStuGradeService();
		try {
			List<Grade> gList = service.showGrade(tid);
			request.setAttribute("gList", gList);
			request.getRequestDispatcher("/ShowAllGrade.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
