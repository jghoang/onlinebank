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
//	public void addAccount(Account account) {
//		account.setNumber(newNumber);
//		newNumber = String.format("%06d", Integer.parseInt(newNumber)+1);
//		acntRepo.save(account);
//	}
	
	public void deleteAccount(Long id) {
		acntRepo.deleteById(id);
	}
}
