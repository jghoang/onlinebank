package com.team3.bankApp.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team3.bankApp.models.User;
import com.team3.bankApp.services.UserService;
import com.team3.bankApp.validator.UserValidator;

@Controller
public class HomeController { // controller for navbar links
	
	@Autowired
    private UserService userService;
	@Autowired
	private UserValidator userValidator;
	
	
	@RequestMapping("") // Goes to home (login) page
	public String index() {
		return "index.jsp";
		// Login "submit" will redirect to dashboard.jsp
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about.jsp";
	}
	
	@RequestMapping("/checking")
	public String checking() {
		return "checking.jsp";
	}
	
	@RequestMapping("/savings")
	public String savings() {
		return "savings.jsp";
	}
	
	@RequestMapping("/invest")
	public String invest() {
		return "invest.jsp";
	}
	
	
  
    
    
    @RequestMapping("/register")
    public String registerForm(@ModelAttribute("user") User user) {
        return "user/newUser.jsp";
    }
    @RequestMapping("/login")
    public String login() {
        return "index.jsp";
    }
    
    @RequestMapping(value="/register", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
    	this.userValidator.validate(user, result);
    	
    	if(result.hasErrors())
    		return "user/newUser.jsp";
    	// else, save the user in the database, save the user id in session, and redirect them to the /home route
    	User newUser = this.userService.registerUser(user);
    	session.setAttribute("userId", newUser.getId());
    	return "redirect:/home";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, 
    		@RequestParam("password") String password, 
    		Model model, HttpSession session, RedirectAttributes redirectAttributes) {
        // if the user is authenticated, save their user id in session
    	if(this.userService.authenticateUser(email, password)) {
    		User user = this.userService.findByEmail(email);
    		session.setAttribute("userId", user.getId());
    		return "redirect:/home";
    	}
    	
    	redirectAttributes.addFlashAttribute("error", "Invalid Email/Password");
    	return "redirect:/login";
        // else, add error messages and return the login page
    }
    
    @RequestMapping("/home")
    public String home(HttpSession session, Model model) {
    	Object userId = session.getAttribute("userId");
    	if(userId == null)
    		return "redirect:/login";
    	User user = this.userService.findUserById((Long)userId);
    	
    	model.addAttribute("user", user);
    	
    	return "user/home.jsp";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        // invalidate session
    	session.invalidate();
    	// redirect to login page
    	return "redirect:/login";
    }
	
}
