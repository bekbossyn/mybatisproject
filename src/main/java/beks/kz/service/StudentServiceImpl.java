package beks.kz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import beks.kz.mappers.StudentMapper;
import beks.kz.model.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentMapper studentMapper;
	
	@Transactional
	public void insertStudent(Student student) {
		studentMapper.insertStudent(student);
	}

	public boolean getStudentByUserName(String word) {
		Student student = studentMapper.getStudentByUserName(word);
		
		if(student != null) {
			return true;
		}
		
		return false;
	}

}
