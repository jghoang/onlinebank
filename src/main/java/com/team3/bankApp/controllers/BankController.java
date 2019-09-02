package com.team3.bankApp.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.User;
import com.team3.bankApp.services.AccountService;
import com.team3.bankApp.services.TransactionService;
import com.team3.bankApp.services.UserService;

@RequestMapping("/")
@Controller 
// Will have to separate all controllers with each models
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
	@RequestMapping("") // Goes to home (login) page
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/registerAccount")
	public String registerAccount() {
		return "registerAccount.jsp";
	}
	
//	@RequestMapping("/account/new")
//	public String showAddAccount(Model model, @ModelAttribute("account") Account account) {
//		List<User> users = userService.allUsers();
//		model.addAttribute("users", users);
//		return "addAccount.jsp";
//	}
	
	@RequestMapping("/account/checking")
	public String checkingact() {
		return "checking.jsp";
	}
	
	@RequestMapping("/account/saving")
	public String savingact() {
		return "saving.jsp";
	}
	
}
