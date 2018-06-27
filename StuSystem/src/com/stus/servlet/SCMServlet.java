package com.stus.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stus.bean.ClasszPlace;
import com.stus.service.SCMService;

public class SCMServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		SCMService service = new SCMService();
		try {
			List<ClasszPlace> cPlaceList = service.findMessage(id);
//			for (ClasszPlace classzPlace : cPlaceList) {
//				System.out.println(classzPlace.toString());
//			}
			request.setAttribute("cpList", cPlaceList);
			request.getRequestDispatcher("/showClasspalce.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
