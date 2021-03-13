package studentenrollmentsystem.com.StudentEnrollmentSystem.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Faculty;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Major;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentApplicationRepository;
import studentenrollmentsystem.com.StudentEnrollmentSystem.service.StudentApplicationService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

@Controller
@SessionAttributes(names = {"student", "studentApplication"})
public class StudentApplicationController {
	@Autowired
	private StudentApplicationRepository repo;

	@Autowired
	private StudentApplicationService enrollService;
	
	@RequestMapping(path = "/enrollment", method = RequestMethod.GET)
	public String getEnrollment(Model model) {
		List<StudentApplication> studentApps = enrollService.getFiles();		
		model.addAttribute("studentApps", studentApps);
		return "enrollment";
	}
	
	@RequestMapping(path = "/enrollment", method = RequestMethod.POST )
	public String postEnrollment(
			@RequestParam("major") String major, @RequestParam("faculty") String faculty,
			@RequestParam("highschoolDiploma") MultipartFile hD, @RequestParam("birthCertificate") MultipartFile bC,
			@RequestParam("testimonyOfFirstYear") MultipartFile firstY, @RequestParam("testimonyOfSecondYear") MultipartFile sY,
			@RequestParam("testimonyOfThirdYear") MultipartFile tY, @RequestParam("testimonyOfFourthYear") MultipartFile fY,
			@RequestParam("points") Double points,
			HttpSession session, Student student, Model model) throws IOException {
		enrollService.addApp(hD, major, faculty,
				firstY, sY, tY, fY, bC,  points, student);

		session.getAttribute("student");
		Set<StudentApplication> studentApplications = enrollService.getApps(student.getId());
		
		model.addAttribute("studentApplications", studentApplications);
		model.addAttribute("message", "Your application has been submited");
		return "student-profile";
	}

	@RequestMapping(path = "/download", method = RequestMethod.GET)
	public void downloadFile(@Param("id") Long id, HttpServletResponse response, Model model) throws Exception {
		Optional<StudentApplication> result =repo.findById(id);
		if(!result.isPresent()){//TODO vtor parametar imeto na file-ot
			throw new Exception("Could not find document with id: " + id);
		}

		StudentApplication studentApplication = result.get();
	
			response.setContentType("application/octet-stream");
			String headerKey = "Content-Disposition";
			String headerValue = "attachment; filename= " + studentApplication.getHighschoolDiploma();
			response.setHeader(headerKey, headerValue);

			response.setContentType("application/octet-stream");
			String headerKey2 = "Content-Disposition";
			String headerValue2 = "attachment; filename= " + studentApplication.getTestimonyOfFirstYear();
			response.setHeader(headerKey2, headerValue2);

			response.setContentType("application/octet-stream");
			String headerKey3 = "Content-Disposition";
			String headerValue3 = "attachment; filename= " + studentApplication.getTestimonyOfSecondYear();
			response.setHeader(headerKey3, headerValue3);
	
			response.setContentType("application/octet-stream");
			String headerKey4 = "Content-Disposition";
			String headerValue4 = "attachment; filename= " + studentApplication.getTestimonyOfThirdYear();
			response.setHeader(headerKey4, headerValue4);
		
			response.setContentType("application/octet-stream");
			String headerKey5 = "Content-Disposition";
			String headerValue5 = "attachment; filename= " + studentApplication.getTestimonyOfFourthYear();
			response.setHeader(headerKey5, headerValue5);

			response.setContentType("application/octet-stream");
			String headerKey6 = "Content-Disposition";
			String headerValue6 = "attachment; filename= " + studentApplication.getBirthCertificate();
			response.setHeader(headerKey6, headerValue6);
		
		ServletOutputStream outputStream =response.getOutputStream();
		outputStream.write(studentApplication.getContent());
		outputStream.close();
	}
	
	





}
