package com.work.student.department.repositary;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.work.student.department.model.Department;import com.work.student.department.model.Student;

public class DepartmentList {
	
	private List<Department> dep=new ArrayList<Department>();
	
	public DepartmentList() {
		super();
		// TODO Auto-generated constructor stub
		dep.add(new Department("ECE",Arrays.asList(new Student("Amy",Arrays.asList("English","Biology")),new Student("Jill",Arrays.asList("Maths","Chemestry")),new Student("Ben",Arrays.asList("English","Chemestry")),new Student("Julie",Arrays.asList("Biology","Physics")))));
		dep.add(new Department("EEE",Arrays.asList(new Student("Chandler",Arrays.asList("English","Maths")),new Student("Monica",Arrays.asList("Biology","Physics")))));
		dep.add(new Department("Mech",Arrays.asList(new Student("Richard",Arrays.asList("English","Biology")),new Student("Ross",Arrays.asList("English","Physics")),new Student("phoebe",Arrays.asList("Physics","Chemestry")))));
		dep.add(new Department("Civl",Arrays.asList(new Student("Rachel",Arrays.asList("Biology","Maths")),new Student("Joey",Arrays.asList("English","Chemestry")),new Student("Emma",Arrays.asList("Chemestry","Maths")),new Student("Gunther",Arrays.asList("Physics","Maths")),new Student("Mike",Arrays.asList("English","Maths","Chemestry")))));
	}

	public List<Department> getDep() {
		return dep;
	}

	public void setDep(List<Department> dep) {
		this.dep = dep;
	}
	
	
	 

}
