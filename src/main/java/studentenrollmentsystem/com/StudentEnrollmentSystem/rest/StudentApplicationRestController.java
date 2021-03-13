package studentenrollmentsystem.com.StudentEnrollmentSystem.rest;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentApplicationRepository;

@RestController
public class StudentApplicationRestController {

	@Autowired
	private StudentApplicationRepository aplicantsRepository;
	
	@RequestMapping(path = "/acceptedStudents", method = RequestMethod.PUT)
    public StudentApplication getAccepted(@RequestParam("id") Long id){
    	StudentApplication aplicant = aplicantsRepository.getStudents(id);
    	aplicant.setStatus("Accepted");
    	aplicantsRepository.save(aplicant);
    	return aplicant;
    }
    
    @RequestMapping(path = "/rejectedStudents", method = RequestMethod.PUT)
    public StudentApplication getRejected(@RequestParam("id") Long id){   	
    	StudentApplication aplicant = aplicantsRepository.getStudents(id);
    	aplicant.setStatus("Rejected");
    	aplicantsRepository.save(aplicant);
    	return aplicant;
    }
}
