package com.work.student.department.repositary;

import java.util.Arrays;
import java.util.List;

import com.work.student.department.model.Student;

public class StudentList {
	
	private List<Student> stu=Arrays.asList(new Student("Naren",Arrays.asList("English","Maths")),new Student("Mouli",Arrays.asList("Biology","Physics","Chemestry")));

	public List<Student> getStu() {
		return stu;
	}

	public void setStu(List<Student> stu) {
		this.stu = stu;
	}
	
	
}
