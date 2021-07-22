package com.ch.cinema.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.cinema.service.MovieService;

@Controller
public class MovieController {
	@Autowired
	private MovieService ms;
	@RequestMapping("main.do")
	public String main() {
		return "/main/main";
	}
}
