package com.example.crud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.crud.model.Student;
import com.example.crud.repository.StudentRepo;

@Service
public class StudentDao {
	@Autowired
	StudentRepo repo;
	
	public Student save(Student stu) 
	{
		return repo.save(stu);
	}

	public List<Student> findAll() {
        return repo.findAll();
    }
     

	public Student getStudentByID(@PathVariable(value="id") Long id) {
	
		return repo.findById(id).orElse(null);
		
	}
	
	public Student findOne(Long id) 
	{
		return repo.findById(id).orElse(new Student());
	}
	
	
	public void delete(Long id) 
	{
		repo.deleteById(id);
	}

	public Student update(@PathVariable(value="id") Long id,@RequestBody Student stu) {
		Student s=repo.findById(id).orElse(null);
		s.setF_name(s.getF_name());
		s.setL_name(s.getL_name());
		s.setMobile_number(s.getMobile_number());
		s.setEmail(s.getEmail());
		s.setGender(s.getGender());
		s.setCity(s.getCity());
		s.setState(s.getState());
		s.setCountry(s.getCountry());
		Student updatestudent=repo.save(stu);
		return updatestudent;
		
	}
	
	
	
}
