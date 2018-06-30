package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Student;
import com.stus.service.MessageService;

public class AllStuMessageServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		MessageService messageService = new MessageService();
		String id = request.getParameter("tid");
		if(id == null){
			id = request.getParameter("id");
		}
		request.setAttribute("tid", id);
		try {
			List<Student> student = messageService.findAll(id);		
			request.setAttribute("st", student);
			request.getRequestDispatcher("/showAll.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
			response.getWriter().write("查询失败");
		}
	}

}
