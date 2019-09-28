package com.team3.bankApp.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.User;
import com.team3.bankApp.repositories.AccountRepository;
import com.team3.bankApp.repositories.UserRepository;

@Service
public class AccountService {
	private final AccountRepository acntRepo;
	private final UserRepository userRepo;
	
	public AccountService(AccountRepository acntRepo, UserRepository userRepo) {
		this.acntRepo = acntRepo;
		this.userRepo = userRepo;
	}
	
	public List<Account> allAccounts(){
		return acntRepo.findAll();
	}
	
	public void addAccount(Account account) {
		acntRepo.save(account);
	}
	

	
	public void deleteAccount(Long id) {
		acntRepo.deleteById(id);
	}
	
	
}
