package studentenrollmentsystem.com.StudentEnrollmentSystem.service;

import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Faculty;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Major;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentApplicationRepository;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentRepository;


@Service
public class StudentApplicationService {

	private static List<StudentApplication> applications = new ArrayList<StudentApplication>();
    private static int todoCount = 3;

	@Autowired
	private StudentApplicationRepository repo;
	
	public List<StudentApplication> getItems(Student student){
		return repo.findAll();
	}
	
	public StudentApplication getStatus(StudentApplication s) {
		return repo.findByStatus(s);
	}

	public Optional<StudentApplication> getFile(Long id) {
		return repo.findById(id);
	}

	public List<StudentApplication> getFiles(){
		return repo.findAll();
	}

	public Set<StudentApplication> getApps(Long id){
		return repo.findByStudentId(id);
	}

	public void addApp(@RequestParam("highschoolDiploma") MultipartFile highSchoolDiploma,
					   String major, String faculty, @RequestParam("testimonyOfFirstYear") MultipartFile testimonyOfFirstYear,
					   @RequestParam("testimonyOfSecondYear") MultipartFile testimonyOfSecondYear,
					   @RequestParam("testimonyOfThirdYear") MultipartFile testimonyOfThirdYear,
					   @RequestParam("testimonyOfFourthYear") MultipartFile testimonyOfFourthYear,
					   @RequestParam("birthCertificate") MultipartFile birthCertificate,
					    double points, Student student) throws IOException {
		String fileName = StringUtils.cleanPath(highSchoolDiploma.getOriginalFilename());
		String fileName2 = StringUtils.cleanPath(testimonyOfFirstYear.getOriginalFilename());
		String fileName3 = StringUtils.cleanPath(testimonyOfSecondYear.getOriginalFilename());
		String fileName4 = StringUtils.cleanPath(testimonyOfThirdYear.getOriginalFilename());
		String fileName5 = StringUtils.cleanPath(testimonyOfFourthYear.getOriginalFilename());
		String fileName6 = StringUtils.cleanPath(birthCertificate.getOriginalFilename());

		StudentApplication studentApp = new StudentApplication();
		studentApp.setMajor(Faculty.valueOf(major));
		studentApp.setFaculty(Major.valueOf(faculty));
		studentApp.setHighschoolDiploma(fileName);
		studentApp.setTestimonyOfFirstYear(fileName2);
		studentApp.setTestimonyOfSecondYear(fileName3);
		studentApp.setTestimonyOfThirdYear(fileName4);
		studentApp.setTestimonyOfFourthYear(fileName5);
		studentApp.setBirthCertificate(fileName6);
		studentApp.setContent(highSchoolDiploma.getBytes());
		studentApp.setPoints(points);
		studentApp.setStudent(student);
		studentApp.setDateOfApplication(new Date());
        repo.save(studentApp);

    };



	public void deleteApp(int id) {
		Iterator<StudentApplication> iterator = applications.iterator();
        while (iterator.hasNext()) {
        	StudentApplication todo = iterator.next();
            if (todo.getId() == id) {
                iterator.remove();
            }
        }
		
	}


}
