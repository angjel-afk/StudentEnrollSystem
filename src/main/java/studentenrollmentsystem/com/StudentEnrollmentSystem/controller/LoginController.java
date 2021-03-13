package studentenrollmentsystem.com.StudentEnrollmentSystem.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
import studentenrollmentsystem.com.StudentEnrollmentSystem.service.StudentApplicationService;
import studentenrollmentsystem.com.StudentEnrollmentSystem.service.StudentService;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes({"student"})
public class LoginController {

	@ModelAttribute("student")
	public Student student(){
		return new Student();
	}

	@Autowired
	private StudentApplicationService appService;

	@Autowired
	private StudentService studentService;

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String getLogin(Model model) {
		model.addAttribute("student", new Student());
		return "login";
	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String postLogin(@RequestParam String email, @RequestParam String password, HttpSession session,Model model) {
		List<Student> s = studentService.getStudent(email, password);

		if(!s.isEmpty()) {
			session.getAttribute("student");
			Student student = s.get(0);
			Set<StudentApplication> studentApplications = appService.getApps(student.getId());
			model.addAttribute("studentApplications", studentApplications);
			model.addAttribute("student", student);
			model.addAttribute("password", password);
			return "student-profile";
		}else {
			model.addAttribute("errorMessage", "Invalid email or password.");
			return "login";
		}
	}

}
