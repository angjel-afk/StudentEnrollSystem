package studentenrollmentsystem.com.StudentEnrollmentSystem.model;

import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Entity
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private long id;
	
	private String name;
	private String surname;
	private int age;
	private String gendre;
	private String address;
	private String email;
	private String password;
	private String confirmPassword;
	
	@OneToMany(mappedBy = "student", cascade = CascadeType.ALL, fetch=FetchType.LAZY)
	private List<StudentApplication> applications;
	
	public Student () {}

	public Student(String name, String surname, int age, String gendre, String address, String email, String password,
			String confirmPassword) {
		super();
		this.name = name;
		this.surname = surname;
		this.age = age;
		this.gendre = gendre;
		this.address = address;
		this.email = email;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGendre() {
		return gendre;
	}

	public void setGendre(String gendre) {
		this.gendre = gendre;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	
	

}
