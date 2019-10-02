package com.team3.bankApp.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
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
	// register user and hash their password
    public User registerUser(User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepo.save(user);
    }
    
    // find user by email
    public User findByEmail(String email) {
        return userRepo.findByEmail(email);
    }
    public List<User> getAll(){
    	return userRepo.findAll();
    }
    // find user by id
    public User findUserById(Long id) {
    	Optional<User> u = userRepo.findById(id);
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
    
    // authenticate user
    public boolean authenticateUser(String email, String password) {
        // first find the user by email
        User user = userRepo.findByEmail(email);
        // if we can't find it by email, return false
        if(user == null) {
            return false;
        } else {
            // if the passwords match, return true, else, return false
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }

	public void updateUser(User user) {
		Optional<User> optionalUser = userRepo.findById(user.getId());
		if(optionalUser.isPresent()) {
			User userPrime = optionalUser.get();
			userPrime.setFirstName(user.getFirstName());
			userPrime.setLastName(user.getLastName());
			userPrime.setEmail(user.getEmail());
			userPrime.setPassword(user.getPassword());
			userPrime.setAddress(user.getAddress());
			userPrime.setPhoneNumber(user.getPhoneNumber());
			userPrime.setSsn(user.getSsn());
			userRepo.save(userPrime);	
		}
	}
	
}
