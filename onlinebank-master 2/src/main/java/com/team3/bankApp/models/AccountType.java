package com.team3.bankApp.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="accountType")
public class AccountType {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type;
    
    @OneToMany(mappedBy = "type", fetch = FetchType.LAZY)
    private List<Account> accounts;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

    
}
