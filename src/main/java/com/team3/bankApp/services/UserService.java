package com.team3.bankApp.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team3.bankApp.models.User;
import com.team3.bankApp.repositories.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepo;
	
	public UserService(UserRepository userRepo) {
		this.userRepo = userRepo;
	}
	
	public List<User> allUsers(){
		return userRepo.findAll();
	}
	public void addUser(User user) {
		userRepo.save(user);
	}
	public void deleteUser(Long id) {
		userRepo.deleteById(id);
	}
}
