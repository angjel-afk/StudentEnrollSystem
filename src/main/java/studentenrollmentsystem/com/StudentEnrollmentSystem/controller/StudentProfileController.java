//package studentenrollmentsystem.com.StudentEnrollmentSystem.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.multipart.MultipartFile;
//
//import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
//import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
//import studentenrollmentsystem.com.StudentEnrollmentSystem.service.StudentApplicationService;
//
//import javax.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.util.List;
//import java.util.Set;
//
//@Controller
//@SessionAttributes(names = {"student", "studentApplication"})
//public class StudentProfileController {
//
//	@Autowired
//	private StudentApplicationService enrollService;
//
//	@RequestMapping(path = "/studentProfile", method = RequestMethod.GET)
//	public String getEnrollment(Model model) {
//		List<StudentApplication> studentApps = enrollService.getFiles();
//		model.addAttribute("studentApps", studentApps);
//		return "student-profile";
//	}
//	
//	@RequestMapping(path = "/studentProfile", method = RequestMethod.POST )
//	public String postEnrollment(
//			@RequestParam("major") String major, @RequestParam("faculty") String faculty,
//			@RequestParam("highschoolDiploma") MultipartFile hD, @RequestParam("birthCertificate") MultipartFile bC,
//			@RequestParam("testimonyOfFirstYear") MultipartFile firstY, @RequestParam("testimonyOfSecondYear") MultipartFile sY,
//			@RequestParam("testimonyOfThirdYear") MultipartFile tY, @RequestParam("testimonyOfFourthYear") MultipartFile fY,
//			@RequestParam("points") Double points,
//			HttpSession session, Student student, Model model) throws IOException {
//		enrollService.addApp(hD, major, faculty,
//				firstY, sY, tY, fY, bC,  points, student);
//
//		session.getAttribute("student");
//		Set<StudentApplication> studentApplications = enrollService.getApps(student.getId());
//		model.addAttribute("studentApplications", studentApplications);
//		model.addAttribute("message", "Your application has been submited");
//		return "student-profile";
//	}
//	
//	
//	
//
//}
