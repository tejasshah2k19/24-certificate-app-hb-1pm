package com.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.entity.StudentEntity;
import com.repository.StudentRepository;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class JasperReportService {

	@Autowired
	StudentRepository studentRepository;

	public String exportStudentListPdf(String reportFormat) throws FileNotFoundException, Exception {
		List<StudentEntity> students = studentRepository.findAll();
		File file = ResourceUtils.getFile("classpath:students.jrxml");
		JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
		JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(students);
		Map<String, Object> map = new HashMap<>();
		map.put("createdBy", "Tejas Shah");
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, map, dataSource);
		JasperExportManager.exportReportToPdfFile(jasperPrint,"students.pdf");
		return "students.pdf";
	}
}
