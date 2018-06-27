package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Student;
import com.stus.service.MessageService;

public class StuMessageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		MessageService messageService = new MessageService();
		try {
			Student s = messageService.findByid(id);
			request.setAttribute("s", s);
			request.getRequestDispatcher("/showOne.jsp").forward(request,
					response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
