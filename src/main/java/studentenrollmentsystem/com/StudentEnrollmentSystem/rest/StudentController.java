package studentenrollmentsystem.com.StudentEnrollmentSystem.rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Faculty;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Major;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentApplicationRepository;


import java.util.HashSet;
import java.util.Set;

@RestController
public class StudentController {


    @Autowired
    private StudentApplicationRepository applicationRepository;
    
    
    @RequestMapping(path = "/getStudents", method = RequestMethod.GET)
    public Set<StudentApplication> getEnrollment(@RequestParam("major") String faculty) {

        try{
            Major fromBrowser = Major.valueOf(faculty);
            Set<StudentApplication> studentApplications = applicationRepository.getStudents(fromBrowser);
            return studentApplications;
        }catch (IllegalArgumentException e){
            return new HashSet<StudentApplication>();
        }

    }
    
  
    
    
   
}
