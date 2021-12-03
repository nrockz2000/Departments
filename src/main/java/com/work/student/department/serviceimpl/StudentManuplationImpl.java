package com.work.student.department.serviceimpl;

import java.util.Arrays;
import java.util.List;

import com.work.student.department.model.Department;
import com.work.student.department.model.Student;
import com.work.student.department.repositary.DepartmentList;
import com.work.student.department.service.StudentMauplation;

public class StudentManuplationImpl implements StudentMauplation {
	
	DepartmentList stu=new DepartmentList();
	List<String> s;
	List<String> sub=Arrays.asList("English","Maths","Biology","Physics","Chemestry");

	@Override
	public List<Department> getDepartmentList() {
		return stu.getDep();
	}

	@Override
	public List<String> getStudentSubjectList(String name,String dept) {
		// TODO Auto-generated method stub
		
		for(Department d:stu.getDep())
		{
			if(d.getName().equalsIgnoreCase(dept))
			{
				for(Student sub:d.getsList())
				{
					if(sub.getName().equalsIgnoreCase(name))
					{
						s=sub.getSub();			
					}
			
				}
			}
		}
		return s;
		}

	@Override
	public List<String> getSubjectList() {
		// TODO Auto-generated method stub
		return sub;
	}

}
