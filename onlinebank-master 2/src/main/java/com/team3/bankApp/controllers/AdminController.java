package com.team3.bankApp.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.AccountType;
import com.team3.bankApp.services.AccountService;
import com.team3.bankApp.services.AccountTypeService;

@Controller
public class AdminController {
	
	private final AccountTypeService accountTypeService;
	private final AccountService accountService;
	
	public AdminController(AccountTypeService accountTypeService,
			AccountService accountService) {
		this.accountTypeService = accountTypeService;
		this.accountService = accountService;
	}
	
	@RequestMapping("/admin")
	public String index() {
		return "admin/index.jsp";
	}
	
	@RequestMapping(value = "/admin/accounts/type")
	public String accountTypes(@ModelAttribute("accountType") AccountType type, Model model) {
		
		List<AccountType> accountTypes = accountTypeService.allAccountTypes();
		
		model.addAttribute("accountTypes", accountTypes);
		return "admin/accountTypes.jsp";
	}
	
	@RequestMapping(value = "/admin/accounts/type", method = RequestMethod.POST)
	public String createAccountTypes(@ModelAttribute("accountType") AccountType accountType,
			BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("*** Error adding Account Type ***");
		} else {
			accountTypeService.addAccountType(accountType);
		}
		
		return "redirect:/admin/accounts/type";
	}
	
	@RequestMapping(value = "/admin/accounts")
	public String showAccounts(Model model) {
		
		List<Account> accounts = accountService.allAccounts();
		model.addAttribute("accounts", accounts);
		return "admin/accounts.jsp";
	}
	
	@RequestMapping(value = "/admin/account/add", method = RequestMethod.GET)
	public String newAccountForm (@ModelAttribute("account") Account account) {
		
		return "admin/newAccount.jsp";
	}
	
	@RequestMapping(value = "/admin/account/add", method = RequestMethod.POST)
	public String createAccount(@ModelAttribute("account") Account account,
			BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("*** Error adding Account ***");
		} else {
			accountService.addAccount(account);
		}
		
		return "admin/newAccount.jsp";
	}
}
