package beks.kz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import beks.kz.model.Student;
import beks.kz.service.StudentService;

@Controller
@SessionAttributes("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		Student student = new Student();
		model.addAttribute("word", student);
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@ModelAttribute("word") Student student, Model model) {
			studentService.insertStudent(student);
			model.addAttribute("message", "Saved word details");
			return "redirect:index.jsp";
	}
	
}
