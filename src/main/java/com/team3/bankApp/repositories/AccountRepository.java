package com.team3.bankApp.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.team3.bankApp.models.Account;

@Repository
public interface AccountRepository extends CrudRepository<Account, Long> {
	List<Account> findAll();
}
