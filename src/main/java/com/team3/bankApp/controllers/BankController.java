package com.team3.bankApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.bankApp.services.AccountService;
import com.team3.bankApp.services.TransactionService;
import com.team3.bankApp.services.UserService;

@Controller // Will have to separate all controllers with each models //
public class BankController {
	private final UserService userService;
	private final AccountService acntService;
	private final TransactionService transService;
	
	public BankController(UserService userService, AccountService acntService, TransactionService transService) {
		this.userService = userService;
		this.acntService = acntService;
		this.transService = transService;
	}
	
	// Mappings
	@RequestMapping("/") // Goes to home (login) page
	public String index() {
		return "index.jsp";
	}
	
}
