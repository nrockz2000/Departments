package com.work.student.department.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.work.student.department.serviceimpl.StudentManuplationImpl;


public class EEEController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentManuplationImpl s=new StudentManuplationImpl();
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JsonArray json = new JsonArray();
	    json.add( new Gson().toJson(s.getStudentSubjectList(request.getParameter("name"),request.getParameter("dept"))));
	    json.add(new Gson().toJson(s.getSubjectList()));
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json.toString());
		
	}

}
