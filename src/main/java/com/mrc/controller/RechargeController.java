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
import com.mrc.model.Recharge;
import com.mrc.model.Wallet;
import com.mrc.service.IRecService;
import com.mrc.service.IWalService;
@Controller
@RequestMapping("/recharge")
public class RechargeController {
	@Autowired
	IRecService recService;
	
	@Autowired
	IWalService walService;
	
	@Autowired
	UserService userService;

	@GetMapping("")
	public ModelAndView index() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = userService.getCurrentUsername();	

		Map<String, Object> map = recService.getByUsername(username);
//		Map<String, Object> map = recService.getByUsername(username);
		return new ModelAndView("recharge", map);
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
		Map<String, Object> map = recService.getById(id);

		return new ModelAndView("/edit", map);
	}
	
//	@GetMapping("/delete/{id}")
//	public String delete(@PathVariable(value = "id") long id) {
//		Map<String, Object> map = recService.delete(id);
//		return "redirect:/";
//	}
//	
//	@GetMapping("/done/{id}")
//	public String changeStatus(@PathVariable(value = "id") long id) {
//		Map<String, Object> map1 = recService.getById(id);
//		Recharge recharge = (Recharge) map1.get("entity");
//		recharge.setStatus("Done");
//		Map<String, Object> map = recService.update(recharge);
//
//		return "redirect:/";
//	}


	@PostMapping("/add")
	public ModelAndView add(HttpServletRequest req, RedirectAttributes redir) {
		Wallet wal= new Wallet();
		Recharge recharge = new Recharge();
		String username = userService.getCurrentUsername();	
		String operator = req.getParameter("operator");
		String phone = req.getParameter("phone");
		String simtype = req.getParameter("simtype");
		Double amount = Double.parseDouble(req.getParameter("amount"));
		Double bl = walService.findBlUsername(username);
		Double newam = 0.0;
		if(bl>=amount) {
			newam=bl-amount;	
		}else {
			return new ModelAndView("failed");
		}
		wal.setBalance(newam);
		wal.setUsername(username);
		wal.setAmount(-amount);
		wal.setTtype("Top UP");
		wal.setTby("Recharge");
		wal.setTrxdate(new Timestamp(System.currentTimeMillis()));
		recharge.setUsername(username);
		recharge.setAmount(amount);
		recharge.setOperator(operator);
		recharge.setPhone(phone);
		recharge.setSimtype(simtype);		
		recharge.setStatus("success");
		recharge.setCreatedDate(new Timestamp(System.currentTimeMillis()));

		Map<String, Object> map = recService.save(recharge);
		if (map!=null) {
			redir.addFlashAttribute("flag","showAlert");
			
		}
		System.out.println(newam);
		 walService.save(wal);
		return new ModelAndView("/recharge", map);
	}
	
}
