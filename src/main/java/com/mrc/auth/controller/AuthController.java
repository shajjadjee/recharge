package com.mrc.auth.controller;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mrc.auth.model.Role;
import com.mrc.auth.model.User;
import com.mrc.auth.service.SecurityService;
import com.mrc.auth.service.UserService;
import com.mrc.auth.validator.UserValidator;

@Controller
public class AuthController {
	
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;
    
    @Autowired
    private UserValidator userValidator;

    @GetMapping("/signup")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "signup";
    }
    
    @GetMapping("/logout")
    public String logout() {
    	SecurityContextHolder.getContext().setAuthentication(null);
        return "redirect:/";
    }

    @PostMapping("/signup")
    public String registration(HttpServletRequest req) {
    	User user = new User();
    	
    	String name = req.getParameter("name");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String mobile = req.getParameter("mobile");
		
		user.setName(name);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setGender(gender);
		user.setPhone(mobile);
    	
//    	userValidator.validate(user, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "auth/registration";
//        }

        userService.save(user);

        securityService.autoLogin(user.getUsername(), user.getPassword());

        return "redirect:/";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "auth/login";
    }

   
}