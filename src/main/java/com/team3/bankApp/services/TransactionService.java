package com.team3.bankApp.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team3.bankApp.models.Transaction;
import com.team3.bankApp.repositories.TransactionRepository;

@Service
public class TransactionService {
	private final TransactionRepository transRepo;
	
	public TransactionService(TransactionRepository transRepo) {
		this.transRepo = transRepo;
	}
	public List<Transaction> allTransactions(){
		return transRepo.findAll();
	}
}
