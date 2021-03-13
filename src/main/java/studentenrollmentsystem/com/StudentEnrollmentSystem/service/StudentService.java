package studentenrollmentsystem.com.StudentEnrollmentSystem.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.repository.StudentRepository;

@Service
public class StudentService {
	
	@Autowired
	private StudentRepository repo;
	
	public Student saveStudent(Student student) {//TODO check if email is already used
		return repo.save(student);
	}
	
	public List<Student> getStudent(String email, String password ){
		return repo.findByEmailAndPassword(email, password);
	}
	
	public List<Student> getStudent(String email){
		return repo.findByEmail(email);
	}
	
	public List<Student> isStudentValid(String email){
		return repo.findByEmail(email);
	}
}
