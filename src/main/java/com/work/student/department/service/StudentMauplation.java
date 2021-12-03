package com.work.student.department.service;

import java.util.List;

import com.work.student.department.model.Department;
import com.work.student.department.model.Student;

public interface StudentMauplation {

	public List<Department> getDepartmentList();
	public List<String> getStudentSubjectList(String name,String dept);
	public List<String> getSubjectList();
}
