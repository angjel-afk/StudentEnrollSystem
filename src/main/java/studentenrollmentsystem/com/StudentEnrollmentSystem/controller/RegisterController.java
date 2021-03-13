package studentenrollmentsystem.com.StudentEnrollmentSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.service.StudentService;


@Controller
public class RegisterController {
	
	@Autowired
	private StudentService service;
	
	@RequestMapping(path = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "register";
	}
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String postRegister(@RequestBody String body, Student student, @RequestParam String email, Model model) {
		List<Student> s = service.getStudent(email);
		if(model.containsAttribute("email")) {
			model.addAttribute("errorMessage", "Email is already in use.");
			return "register";
		}else {
		student = service.saveStudent(student);
		model.addAttribute("name", student.getName());
		model.addAttribute("student", student);
		return "register-confirmed";
		}
		
	}
	
	

}
