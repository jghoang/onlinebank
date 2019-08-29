package com.team3.bankApp.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.repositories.AccountRepository;

@Service
public class AccountService {
	private final AccountRepository acntRepo;
	
	public AccountService(AccountRepository acntRepo) {
		this.acntRepo = acntRepo;
	}
	
	public List<Account> allAccounts(){
		return acntRepo.findAll();
	}
}
