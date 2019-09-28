package com.team3.bankApp.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.team3.bankApp.models.AccountType;

public interface AccountTypeRepository extends CrudRepository<AccountType, Long> {
	List<AccountType> findAll();
}
