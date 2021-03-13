package studentenrollmentsystem.com.StudentEnrollmentSystem.model;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Entity
public class StudentApplication {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private long id;

	private double points;

	@Enumerated(EnumType.STRING)
	@Column(length = 255, name = "Faculty")
	private Faculty major;

	@Enumerated(EnumType.STRING)
	@Column(length = 255, name = "Major")
	private Major faculty;

	private String highschoolDiploma;
	private String testimonyOfFirstYear;
	private String testimonyOfSecondYear;
	private String testimonyOfThirdYear;
	private String testimonyOfFourthYear;
	private String birthCertificate;

	@Lob
	private byte[] content;
	
	@Column
	private String status;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOfApplication;

	@ManyToOne
	@JoinColumn(name = "Student_ID")
	private Student student;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getPoints() {
		return points;
	}

	public void setPoints(double points) {
		this.points = points;
	}

	public Faculty getMajor() {
		return major;
	}

	public void setMajor(Faculty major) {
		this.major = major;
	}

	public Major getFaculty() {
		return faculty;
	}

	public void setFaculty(Major faculty) {
		this.faculty = faculty;
	}

	public String getHighschoolDiploma() {
		return highschoolDiploma;
	}

	public void setHighschoolDiploma(String highschoolDiploma) {
		this.highschoolDiploma = highschoolDiploma;
	}

	public String getTestimonyOfFirstYear() {
		return testimonyOfFirstYear;
	}

	public void setTestimonyOfFirstYear(String testimonyOfFirstYear) {
		this.testimonyOfFirstYear = testimonyOfFirstYear;
	}

	public String getTestimonyOfSecondYear() {
		return testimonyOfSecondYear;
	}

	public void setTestimonyOfSecondYear(String testimonyOfSecondYear) {
		this.testimonyOfSecondYear = testimonyOfSecondYear;
	}

	public String getTestimonyOfThirdYear() {
		return testimonyOfThirdYear;
	}

	public void setTestimonyOfThirdYear(String testimonyOfThirdYear) {
		this.testimonyOfThirdYear = testimonyOfThirdYear;
	}

	public String getTestimonyOfFourthYear() {
		return testimonyOfFourthYear;
	}

	public void setTestimonyOfFourthYear(String testimonyOfFourthYear) {
		this.testimonyOfFourthYear = testimonyOfFourthYear;
	}

	public String getBirthCertificate() {
		return birthCertificate;
	}

	public void setBirthCertificate(String birthCertificate) {
		this.birthCertificate = birthCertificate;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public Date getDateOfApplication() {
		return dateOfApplication;
	}

	public void setDateOfApplication(Date dateOfApplication) {
		this.dateOfApplication = dateOfApplication;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	


}
