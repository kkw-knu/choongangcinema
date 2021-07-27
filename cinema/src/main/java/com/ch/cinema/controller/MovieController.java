package com.ch.cinema.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping("movielist.do")
	public String movielist() {
		return "/main/movielist";
	}
	@RequestMapping("insertForm.do")
	public String insertForm(int num, String pageNum, Model model) {
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		return "/main/movieinsert";
	}
	
}
