package studentenrollmentsystem.com.StudentEnrollmentSystem.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {


	List<Student> findByEmailAndPassword(String email, String password);

	List<Student> findByEmail(String email);



}
