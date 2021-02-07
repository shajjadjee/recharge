package com.mrc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	@GetMapping("/index2")
	public ModelAndView index2() {
		return new ModelAndView("index2");
	}
	@GetMapping("/deshboard")
	public ModelAndView deshboard() {
		return new ModelAndView("deshboard");
	}
}
