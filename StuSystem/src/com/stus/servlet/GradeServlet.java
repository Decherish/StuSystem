package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Elective;
import com.stus.bean.Obligatory;
import com.stus.service.GradeService;

public class GradeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		GradeService service = new GradeService();
		try {
			List<Elective> eList = service.findEle(id);
			List<Obligatory> oList = service.finObl(id);
			request.setAttribute("eList", eList);
			request.setAttribute("oList", oList);
			
			request.getRequestDispatcher("/ShowGrade.jsp").forward(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
