package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.Course;
import com.stus.service.ChooseService;

public class ChooseServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		ChooseService service = new ChooseService();
		ArrayList<Course> cList =new ArrayList<Course>();
		try {
			List<Course> cAllList = service.find();
			for (Course course : cAllList) {
				if (course.getType()!=0) {
					cList.add(course);
				}
			}
			request.setAttribute("cList", cList);
			request.getRequestDispatcher("/ChooseClass.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
