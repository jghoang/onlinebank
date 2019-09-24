package com.team3.bankApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController { // controller for navbar links
	
	@RequestMapping("/about")
	public String about() {
		return "about.jsp";
	}
	
	@RequestMapping("/checking")
	public String checking() {
		return "checking.jsp";
	}
	
	@RequestMapping("/savings")
	public String savings() {
		return "savings.jsp";
	}
	
	@RequestMapping("/investments")
	public String invest() {
		return "invest.jsp";
	}
	
	@RequestMapping("/CertificateOfDeposit")
	public String CertificateOfDeposit() {
		return "CertificateOfDeposit.jsp";
	}
	
}
