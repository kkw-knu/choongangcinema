package com.ch.cinema.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.cinema.model.Moviem;
import com.ch.cinema.service.MoviemService;

@Controller
public class MoviemController {
	@Autowired
	private MoviemService ms;
	
	@RequestMapping("mview")
	public String mview(String mid, Model model) {
		Moviem mm = ms.select(mid);
		model.addAttribute("moviem", mm);
		return "member/mview";
	}
	
	@RequestMapping("minsertForm")
	public String minsertForm() {
		return "member/minsertForm";
	}
	
	@RequestMapping("midChk")
	public String midChk(String mid, Model model) {
		Moviem moviem = ms.select(mid); 
		/* System.out.println(mid+ " "+ moviem); */
		String msg = "";
		if(moviem==null) msg = "사용가능한 ID 입니다.";
		else msg = "이미 사용중인 ID 입니다.";
		model.addAttribute("msg", msg);
		return "member/midChk";
	}
	@RequestMapping("passChk")
	public String passChk(String pass, Model model) {
		Moviem moviem = ms.select(pass);
		String msg = "";
		if(moviem==null) msg = "비번이 다릅니다";
		else msg = "환영합니다.";
		model.addAttribute("msg", msg);
		return "member/passChk";
		
	}
	@RequestMapping("minsert")
	public String minsert(Moviem moviem, Model model) {
		int result = ms.insert(moviem);
		model.addAttribute("result", result);
		return "member/minsert";
	}
	@RequestMapping("mupdateForm")
	public String mupdateForm(String mid, Model model) {
		Moviem mm = ms.select(mid);
		model.addAttribute("moviem",mm);
		return "member/mupdateForm";
	}
	@RequestMapping("mupdate")
	public String mupdate(Moviem moviem, Model model) {
		int result = ms.update(moviem);
		model.addAttribute("result", result);
		return "member/mupdate";
	}
	@RequestMapping("mdeleteForm")
	public String deleteForm(String mid, Model model) {
		Moviem mm = ms.select(mid);
		model.addAttribute("moviem", mm);
		return "member/mdeleteForm";
	}
	@RequestMapping("mdelete")
	public String delete(String mid, Model model, HttpSession session) {
		int result =  ms.delete(mid);
		model.addAttribute("result", result);
		session.invalidate();
		return "member/mdelete";
	}

	@RequestMapping("mypage")
	public String mypage(HttpSession session, Model model, Moviem moviem) {
		String mid = (String)session.getAttribute("mid");
		if(mid != null)
			moviem = ms.select(mid);
		model.addAttribute("moviem", moviem);
		return "member/mypage";
	}
}
