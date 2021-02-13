package com.mrc.controller;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mrc.auth.service.UserService;
import com.mrc.model.Comment;
import com.mrc.model.Wallet;
import com.mrc.service.IComService;
import com.mrc.service.IWalService;

@Controller
@RequestMapping("/comments")
public class CommentController {
	@Autowired
	IComService comService;
	
	@Autowired
	IWalService walService;
	
	@Autowired
	UserService userService;

	@GetMapping("")
	public ModelAndView index() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = userService.getCurrentUsername();	

		Map<String, Object> map = comService.getByUsername(username);
//		Map<String, Object> map = comService.getByUsername(username);
		return new ModelAndView("comments", map);
	}
	
	@GetMapping("/success")
	public ModelAndView success() {
		return new ModelAndView("success");
	}
	@GetMapping("/failed")
	public ModelAndView failed() {
		return new ModelAndView("failed");
	}

	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") long id) {
		Map<String, Object> map = comService.getById(id);

		return new ModelAndView("/edit", map);
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable(value = "id") long id) {
		Map<String, Object> map = comService.delete(id);
		return "redirect:/";
	}
//	
//	@GetMapping("/done/{id}")
//	public String changeStatus(@PathVariable(value = "id") long id) {
//		Map<String, Object> map1 = comService.getById(id);
//		Recharge recharge = (Recharge) map1.get("entity");
//		recharge.setStatus("Done");
//		Map<String, Object> map = comService.update(recharge);
//
//		return "redirect:/";
//	}


	@PostMapping("/add")
	public ModelAndView add(HttpServletRequest req, RedirectAttributes redir) {
		Comment comment = new Comment();
		String username = userService.getCurrentUsername();	
		String description = req.getParameter("description");
		comment.setUsername(username);
		comment.setDescription(description);
		Map<String, Object> map = comService.save(comment);
		if (map!=null) {
			redir.addFlashAttribute("flag","showAlert");
		}
		return new ModelAndView("/comments", map);
	}
	
}
