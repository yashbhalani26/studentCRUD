package com.example.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.example.crud.dao.StudentDao;
import com.example.crud.model.Student;

@RestController
public class StudentController {
	@Autowired  
	StudentDao studentDao;
	
	@RequestMapping("/")
	
	public ModelAndView home() {
        ModelAndView model = new ModelAndView();
        List<Student> allStudents = studentDao.findAll();
        model.addObject("list", allStudents);
        model.setViewName("index");
        return model;
    }
	
	@RequestMapping("/add")
	public ModelAndView addStudent(Student student)
	{
		ModelAndView mv= new ModelAndView("addstudent");
		mv.addObject("student",student);
		//mv.setViewName("addstudent");
		/* System.out.println("in save;;;;"+student.getF_name()); */
		if(student.getF_name()!=null)
		{
			studentDao.save(student);
			
		}
		return mv;
	}
	
	@RequestMapping("/edit")
	public ModelAndView getStudent(@RequestParam Long id) {
	    ModelAndView mav = new ModelAndView("edit");
	    Student student = studentDao.getStudentByID(id);
	    mav.addObject("student", student);
	   // mav.setViewName();
	   
	    return mav;
	}
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    ModelAndView updateStudentRecord(Student newStudent, @PathVariable("id") Long id) {
        studentDao.update(id, newStudent);
        return home();
    }
	
	@RequestMapping("/delete")
    ModelAndView deleteStudent(@RequestParam Long id) {
        studentDao.delete(Long.valueOf(id));
        return home();
    }
	}

