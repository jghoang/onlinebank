package com.team3.bankApp.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team3.bankApp.models.AccountType;
import com.team3.bankApp.repositories.AccountTypeRepository;

@Service
public class AccountTypeService {
	private final AccountTypeRepository accountTypeRepository;
	
	public AccountTypeService(AccountTypeRepository accTypeRep) {
		this.accountTypeRepository = accTypeRep;
	}
	
	public List<AccountType> allAccountTypes() {
		return accountTypeRepository.findAll();
	}
	
	public void addAccountType(AccountType accountType) {
		accountTypeRepository.save(accountType);
	}
}
