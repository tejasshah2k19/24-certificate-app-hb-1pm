package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.lang.Double;

import com.entity.StudentEntity;
import com.repository.StudentRepository;
import com.service.JasperReportService;

@Controller
public class StudentController {

	@Autowired
	StudentRepository studentRepository;

	@Autowired
	JasperReportService jasperReportService;

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
		model.addAttribute("students", students);

		return "ListUsers";
	}

	@GetMapping("/certificate")
	public String certificate(@RequestParam("studentId") String studentId, Model model) {

		StudentEntity student = studentRepository.findById(studentId).get();

		Double avgPerformance2 = (student.getCommunication() + student.getDiscipline() + student.getRegularity()
				+ student.getTestPerformance()) / 4.0;
		avgPerformance2 = avgPerformance2 * 20;

		Integer avgPerformance = avgPerformance2.intValue();

		String grade = "";
		if (avgPerformance == 100) {
			grade = "A+";
		} else if (avgPerformance >= 80) {
			grade = "A";
		} else if (avgPerformance >= 60) {
			grade = "B+";
		} else if (avgPerformance >= 40) {
			grade = "B";
		} else {
			grade = "C";
		}
		System.out.println(avgPerformance);

		model.addAttribute("student", student);
		model.addAttribute("grade", grade);
		model.addAttribute("avgPerformance", avgPerformance);

		return "Certificate2";
	}

	@GetMapping("/certificate1")
	public String certificateOld(@RequestParam("studentId") String studentId, Model model) {

		StudentEntity student = studentRepository.findById(studentId).get();

		Double avgPerformance2 = (student.getCommunication() + student.getDiscipline() + student.getRegularity()
				+ student.getTestPerformance()) / 4.0;
		avgPerformance2 = avgPerformance2 * 20;

		Integer avgPerformance = avgPerformance2.intValue();

		String grade = "";
		if (avgPerformance == 100) {
			grade = "A+";
		} else if (avgPerformance >= 80) {
			grade = "A";
		} else if (avgPerformance >= 60) {
			grade = "B+";
		} else if (avgPerformance >= 40) {
			grade = "B";
		} else {
			grade = "C";
		}
		System.out.println(avgPerformance);

		model.addAttribute("student", student);
		model.addAttribute("grade", grade);
		model.addAttribute("avgPerformance", avgPerformance);

		return "Certificate";
	}

	@GetMapping("exportpdf")
	public String exportPdf() {
		try {
			jasperReportService.exportStudentListPdf("pdf");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "NewStudent";
	}

}
