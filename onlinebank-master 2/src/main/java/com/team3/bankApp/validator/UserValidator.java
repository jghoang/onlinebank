package com.team3.bankApp.validator;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.team3.bankApp.models.User;
import com.team3.bankApp.repositories.UserRepository;

@Component
public class UserValidator implements Validator {
	@Autowired
	private UserRepository uRepo;
    @Override
    public boolean supports(Class<?> cla$$) {
        return User.class.equals(cla$$);
    }
    
    @Override
    public void validate(Object target, Errors errors) {
        User u = (User) target;    
        if(this.uRepo.findByEmail(u.getEmail()) != null) {
        	errors.rejectValue("email", "Unique");
        }         
    }
}