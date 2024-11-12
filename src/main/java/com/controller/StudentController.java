package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.StudentEntity;
import com.repository.StudentRepository;

@Controller
public class StudentController {

	@Autowired
	StudentRepository studentRepository;

	@GetMapping("/newstudent")
	public String newStudent() {
		return "NewStudent";
	}

	@PostMapping("/savestudentdetail")
	public String saveStudentDetail(StudentEntity studentEntity) {
		// how to read jsp form data here ?
		studentRepository.save(studentEntity);
		return "NewStudent";
	}

	@GetMapping("/liststudents")
	public String listUsers(Model model) {

		List<StudentEntity> students = studentRepository.findAll();
		model.addAttribute("students",students);
		
		return "ListUsers";
	}

}
