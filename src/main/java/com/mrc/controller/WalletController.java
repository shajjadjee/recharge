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

import com.mrc.auth.service.UserService;
import com.mrc.model.Wallet;
import com.mrc.service.IWalService;


@Controller
@RequestMapping("/wallet")
public class WalletController {
	@Autowired
	IWalService walService;
	
	@Autowired
	UserService userService;

	@GetMapping("")
	public ModelAndView index() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = userService.getCurrentUsername();	

		Map<String, Object> map = walService.getByUsername(username);
		return new ModelAndView("wallet", map);
	}
	@GetMapping("/success2")
	public ModelAndView success2() {
		return new ModelAndView("success2");
	}
	@GetMapping("/failed2")
	public ModelAndView failed2() {
		return new ModelAndView("failed2");
	}
	
	@GetMapping("/my-today")
	public ModelAndView myToday() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = userService.getCurrentUsername();	

		Map<String, Object> map = walService.getByUsername(username);
		return new ModelAndView("/my-today", map);
	}

	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") long id) {
		Map<String, Object> map = walService.getById(id);

		return new ModelAndView("/edit", map);
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable(value = "id") long id) {
		Map<String, Object> map = walService.delete(id);
		return "redirect:/";
	}
	
	@GetMapping("/done/{id}")
	public String changeStatus(@PathVariable(value = "id") long id) {
		Map<String, Object> map1 = walService.getById(id);
		Wallet wallet = (Wallet) map1.get("entity");
//		wallet.setStatus("Done");
		Map<String, Object> map = walService.update(wallet);

		return "redirect:/";
	}


	@PostMapping("/add")
	public ModelAndView add(HttpServletRequest req) {
		Wallet wallet = new Wallet();
		String username = userService.getCurrentUsername();	
		String tby = req.getParameter("tby");
		Double amount = Double.parseDouble(req.getParameter("amount"));
		Double bl = walService.findBlUsername(username);
		Double newam = (bl+amount);
		wallet.setUsername(username);
		wallet.setAmount(amount);
		wallet.setTtype("Add Money");
		wallet.setTby(tby);
		wallet.setBalance(newam);
		wallet.setTrxdate(new Timestamp(System.currentTimeMillis()));
		Map<String, Object> map = walService.save(wallet);

		return new ModelAndView("/success2", map);
	}
	
//	@PostMapping("/update")
//	public ModelAndView update(HttpServletRequest req) {
//		String username = userService.getCurrentUsername();	
//		String content = req.getParameter("content");
//		String id = req.getParameter("id");
//		
//		Recharge todo = new Recharge();
//		todo.setId(Long.parseLong(id));
//		todo.setTitle(content);
//		todo.setContent(content);
//		todo.setCreatedBy(username);
//		todo.setCreatedDate(new Timestamp(System.currentTimeMillis()));
//		Map<String, Object> map = recService.update(todo);
//		
//		return new ModelAndView("todo/edit", map);
//	}

}
