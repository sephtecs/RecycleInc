package com.codingdojo.recyclinc.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.recyclinc.models.LoginUser;
import com.codingdojo.recyclinc.models.User;
import com.codingdojo.recyclinc.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userServ;
	
	
	
	
	
	// Immediately brings them to the dash-board page
	@GetMapping("/")
	public String dashboard() {
		return "index.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
   
    // brings them to the login page

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
    
    // Allows a current user to login if validations pass
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
    		BindingResult result, Model model, HttpSession session) {
    	User user = userServ.login(newLogin, result);
    	if(result.hasErrors()) {
    		model.addAttribute("newUser", new User());
    		return "index.jsp";
    	}
    	session.setAttribute("user_id", user.getId());
    	return "login.jsp";
    }
    
    // logs the user out and takes them out of session
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
    
    // Brings them to the register page.    
    @GetMapping("/register")
    public String register(Model model) {
    	model.addAttribute("newUser", new User());
    	return "registration.jsp";
    }
    
    // Registers the user and then brings them to the home page if validations pass
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        userServ.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/";
    }
    
    
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
