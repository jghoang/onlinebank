package com.team3.bankApp.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@GetMapping("user/new") // Register process for new user
	public String registerUser(@ModelAttribute("user") User user) {
		return "user/newUser.jsp";
	}
	
	@RequestMapping(value="user/new", method = RequestMethod.POST) // Create new user
	public String createUser(@ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("*** Error in Creating User ***"); // Print error in console
			return "user/newUser.jsp";
		}
		else {
			System.out.println("New User Created!"); // Print success in console
			userService.addUser(user);
			return "redirect:"; // **** to accountHome.jsp **** will list out ALL accounts
		}
	}
	
	@RequestMapping("user/{id}")
	public String showUserInfo(@PathVariable("id") Long id, Model model, @ModelAttribute("account") Account account) {
		User user = userService.findUser(id);
		model.addAttribute("user", user);
		return "user/home.jsp"; // Create home.jsp under WEB-INF/user folder
	}
	
	@RequestMapping("user/{id}/edit") // Update user information
	public String updateUser(@PathVariable("id") Long id, Model model) {
		User user = userService.findUser(id);
		model.addAttribute("user", user);
		return ("user/edit.jsp"); // Create edit.jsp under WEB-INF/user folder
	}
	
	@RequestMapping("account/addNew") // Go to add account page
	public String registerAccount(@ModelAttribute("account") Account account) {
		return "account/registerAccount.jsp";
	}
	
	@RequestMapping(value="addAccount", method = RequestMethod.POST) // Creates new account
	public String createAccount(@Valid @ModelAttribute("account") Account account, BindingResult result) {
		if(result.hasErrors()) {
			return "account/registerAccount.jsp";
		}
		else {
			return "redirect:user/home.jsp";
		}
	}
	
	@RequestMapping("account/add/checking") // Create new checking account
	public String checkingAct() {
		return "checkingAcc.jsp";
	}

	
	@RequestMapping("/account/add/saving")
	public String savingAct() {
		return "savingAcc.jsp";
	}
	
	@RequestMapping("/account/add/CertificateOfDeposit")
	public String CertificateOfDeposit() {
		return "CertificateOfDeposit.jsp";
	}
	

	
	
	

	

	
	
	
	
	
	
	
}
