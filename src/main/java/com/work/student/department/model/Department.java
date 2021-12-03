package com.work.student.department.model;
import java.util.*;

public class Department {
	private String name;
	private List<Student> sList;
	
	
	public Department(String name, List<Student> sList) {
		super();
		this.name = name;
		this.sList = sList;
	}
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Student> getsList() {
		return sList;
	}
	public void setsList(List<Student> sList) {
		this.sList = sList;
	}
	

}
