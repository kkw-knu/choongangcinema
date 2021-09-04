package com.ch.cinema.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Moviem;
import com.ch.cinema.service.MoviemService;


@Controller
public class MainController {
	@Autowired
	private MoviemService mms;
	
	@RequestMapping("adMain")
	public String adMain(HttpSession session, Model model, Moviem moviem) {
		String id = (String)session.getAttribute("id");
		if(id != null)	moviem = mms.select(id);
		model.addAttribute("moviem",moviem);
		return "admin/adMain";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	@RequestMapping("login")
	public String login(Moviem moviem, Model model, HttpSession session) {	
		Moviem mv = mms.select(moviem.getMid());
		int result = 0;
		if(moviem.getMid().equals("admin") && moviem.getPass().equals("admin")) {
				result = 2;
				session.setAttribute("mid", moviem.getMid());
				session.setAttribute("mnum", mv.getMnum());
			}		
		else{
			if(mv==null) result = -1;
			else if (mv.getPass().equals(moviem.getPass())) {
				result = 1;	
				session.setAttribute("mid", moviem.getMid());
				session.setAttribute("mnum", mv.getMnum());
			}}
			model.addAttribute("mv",mv);
			model.addAttribute("result",result);
			return "member/login";
		}
	@RequestMapping("logout")
	public String logout(HttpSession session,Model model, Movie movie) {
		session.invalidate();
		return "member/logout";
	}
}
