package beks.kz.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import beks.kz.model.Student;

public interface StudentMapper {
	@Insert("INSERT INTO word(word) VALUES"
			+ "(#{word})")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertStudent(Student student);
		
	@Select("SELECT USERNAME as word "
			+ "FROM word WHERE word = #{word}")
	public Student getStudentByUserName(String userName);


}
