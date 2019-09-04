package com.team3.bankApp.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@RequestMapping("") // Goes to home (login) page
	public String index() {
		return "index.jsp";
		// Login "submit" will redirect to dashboard.jsp
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
	
	@RequestMapping("account/checking")
	public String checkingAct() {
		return "checking.jsp";
	}
	
	@RequestMapping("/account/saving")
	public String savingAct() {
		return "saving.jsp";
	}
	
	@RequestMapping("account/new") // Registration process for new account
	public String registerAccount(@ModelAttribute("account") Account account) {
		return "registerAccount.jsp";
	}
	
	@PostMapping("account") // Create new account ** // How to link account to user (user.getId())?
	public void createAccount(@Valid @ModelAttribute("account") Account account) {
		
	}
	
	@RequestMapping("user/new") // Register process for new user
	public String registerUser(@ModelAttribute("user") User user) {
		return "newUser.jsp";
	}
	
	@RequestMapping(value="user/new", method = RequestMethod.POST) // Create new user
	public String createUser(@ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("*** Error in Creating User ***"); // Print error in console
			return "newUser.jsp";
		}
		else {
			System.out.println("New User Created!"); // Print success in console
			userService.addUser(user);
			return "redirect:"; // **** to accountHome.jsp **** will list out ALL accounts
		}
	}
	
	
	
	
	
}
