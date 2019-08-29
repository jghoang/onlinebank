package com.team3.bankApp.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.team3.bankApp.models.Transaction;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Long>{
	List<Transaction> findAll();
}
