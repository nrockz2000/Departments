package com.work.student.department.model;

import java.util.List;

public class Student {

	private String name;
	private List<String> sub;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<String> getSub() {
		return sub;
	}
	public void setSub(List<String> sub) {
		this.sub = sub;
	}
	public Student(String name, List<String> sub) {
		super();
		this.name = name;
		this.sub = sub;
	}
	
}
