package beks.kz.service;

import beks.kz.model.Student;

public interface StudentService {
	void insertStudent(Student student);
	boolean getStudentByUserName(String word);
}
