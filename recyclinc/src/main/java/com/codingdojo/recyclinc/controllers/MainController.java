package com.codingdojo.recyclinc.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.recyclinc.models.Interaction;
import com.codingdojo.recyclinc.models.LoginUser;
import com.codingdojo.recyclinc.models.User;
import com.codingdojo.recyclinc.services.InteractionService;
import com.codingdojo.recyclinc.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userServ;
	
	@Autowired
	private InteractionService interServ;
	
	
	// Immediately brings them to the dash-board page
	@GetMapping("/")
	public String dashboard(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		if(userId == null) {
			return "index.jsp";
		}
		User user = userServ.findUserById(userId);
		model.addAttribute("user", user);
		
		
		return "index.jsp";
	}
	
	

	
	
	// ---------- User Locations, Notes & Comments Controller -------------
	
	@GetMapping("/locations")
	public String locations() {
		return "locationList.jsp";
	}
	
	
	@RequestMapping("/userdash")
	public String newNote(HttpSession session, Model model) { // an empty class and with the below method, we fill it with values
		List<Interaction> allInteractions = interServ.allInteractions();
		Long userId = (Long) session.getAttribute("user_id");
		model.addAttribute("newUser", new User());
		if(userId == null) {
			return "redirect:/userdash";
		}
		User user = userServ.findUserById(userId);
		Interaction interaction = new Interaction();
		model.addAttribute("user", user);
		model.addAttribute("interaction", interaction);
		model.addAttribute("allInteractions", allInteractions);
		return "mylocations.jsp";
	}
	
	@RequestMapping(value="/userdash/comment", method=RequestMethod.POST)
	public String createInteraction(@Valid @ModelAttribute("interaction") Interaction interaction, BindingResult result, HttpSession session) {
		Long userId = (Long) session.getAttribute("user_id");
		User user = userServ.findUserById(userId);
		if (result.hasErrors()) {
			return "mylocations.jsp";
		} else {
			interaction.setOwner(user);//allows me to set user ID to specific book
			interaction.setTestimonial("empty");
			interaction.setNumberOfLikes(0);
			interServ.createInteraction(interaction);
			return "redirect:/userdash";
		}
	}
	
    @RequestMapping(value="/userdash/{id}", method=RequestMethod.DELETE)
    public String destroy(@PathVariable("id") Long id) {
        interServ.deleteInteraction(id);
        return "redirect:/userdash";
    }
	
	// ------------- Login and Registration Methods --------------------
	
	
    // brings them to the login page
    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
    
    // Allows a current user to login if validations pass
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
    		BindingResult result, Model model, HttpSession session) {
    	if(result.hasErrors()) {
    		return "login.jsp";
    	}
    	model.addAttribute("newUser", new User());
    	User user = userServ.login(newLogin, result);
    	session.setAttribute("user_id", user.getId());
    	return "redirect:/";
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
    @PostMapping("/register/newUser")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        if(result.hasErrors()) {
            return "registration.jsp";
        }
        userServ.register(newUser, result);
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/";
    }
    
    

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
