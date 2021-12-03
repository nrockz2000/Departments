package com.work.student.department.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.work.student.department.serviceimpl.StudentManuplationImpl;

public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentManuplationImpl s=new StudentManuplationImpl();
	String name;
	
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String json = new Gson().toJson(s.getDepartmentList());
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);     // Write response body.
	}

}
