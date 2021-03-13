package studentenrollmentsystem.com.StudentEnrollmentSystem.repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import org.springframework.transaction.annotation.Transactional;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.Student;
import studentenrollmentsystem.com.StudentEnrollmentSystem.model.StudentApplication;

import javax.print.Doc;

@Repository
@Transactional
public interface StudentApplicationRepository extends JpaRepository<StudentApplication, Long> {
	
	
	public void delete(StudentApplication app);
	public Optional<StudentApplication> findById(long id);
	public long count();
	
	public StudentApplication save(StudentApplication app);

	public List <StudentApplication> findAll();

	public Set<StudentApplication> findByStudentId(Long id);

	@Query(" FROM StudentApplication WHERE faculty= :major")
	public Set<StudentApplication> getStudents(Enum major);
	
	@Query(" FROM StudentApplication WHERE id= :id")
	public StudentApplication getStudents(Long id);
	
	
	
	public StudentApplication findByStatus(StudentApplication s);
}
