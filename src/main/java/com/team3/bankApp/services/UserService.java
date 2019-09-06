package com.team3.bankApp.services;

import java.util.List;
import java.util.Optional;

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
	public User findUser(Long id) {
		Optional<User> optionalUser = userRepo.findById(id);
		if(optionalUser.isPresent()) {
			return optionalUser.get()
;		}
		else {
			return null;
		}
	}
	public void updateUser(User user) {
		Optional<User> optionalUser = userRepo.findById(user.getId());
		if(optionalUser.isPresent()) {
			User userPrime = optionalUser.get();
			userPrime.setFirstName(user.getFirstName());
			userPrime.setLastName(user.getLastName());
			userPrime.setEmailAddress(user.getEmailAddress());
			userPrime.setPassword(user.getPassword());
			userPrime.setAddress(user.getAddress());
			userPrime.setPhoneNumber(user.getPhoneNumber());
			userPrime.setSsn(user.getSsn());
			userRepo.save(userPrime);	
		}
	}
	
}
