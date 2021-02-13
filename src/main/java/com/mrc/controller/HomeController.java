package com.mrc.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mrc.service.IComService;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	IComService comService;
	@GetMapping("/")
	public ModelAndView index() {
		Map<String, Object> map = comService.getAll();
		System.out.println(map);
		return new ModelAndView("index", map);
	}
	@GetMapping("/index2")
	public ModelAndView index2() {
		return new ModelAndView("index2");
	}
	@GetMapping("/deshboard")
	public ModelAndView deshboard() {
		return new ModelAndView("deshboard");
	}
	@GetMapping("/admin")
	public ModelAndView admin() {
		return new ModelAndView("deshboard");
	}
}
