package com.ch.cinema.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.cinema.model.Moviem;
import com.ch.cinema.service.AdminService;
import com.ch.cinema.service.PagingBean;


@Controller
public class AdminController {
	@Autowired
	private AdminService as;
	
	@RequestMapping("adminList")
	public String adminList(String pageNum,Model model, Moviem moviem) {
		int rowPerPage = 10;
		if (pageNum==null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = as.total(moviem); 
		PagingBean pp = new PagingBean(total,rowPerPage,currentPage);
		int no = total - startRow + 1;
		moviem.setStartRow(startRow);
		moviem.setEndRow(endRow);
		// List<Board> list = bs.getList(startRow, endRow);
		List<Moviem> list = as.getList(moviem);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		String[] ops = {"ID","이름","성별","ID+이름"};
		model.addAttribute("keyword",moviem.getKeyword());
		model.addAttribute("search", moviem.getSearch());
		model.addAttribute("ops",ops);
		return "admin/adminList";
	}
	@RequestMapping("adminupdateForm")
	public String mupdateForm(String mid, Model model) {
		Moviem mm = as.select(mid);
		model.addAttribute("moviem",mm);
		return "admin/adminupdateForm";
	}
	@RequestMapping("adminupdate")
	public String mupdate(Moviem moviem, Model model) {
		int result = as.update(moviem);
		model.addAttribute("result", result);
		return "admin/adminupdate";
	}
	@RequestMapping("admindeleteForm")
	public String deleteForm(String mid, Model model) {
		Moviem mm = as.select(mid);
		model.addAttribute("moviem", mm);
		return "admin/admindeleteForm";
	}
	@RequestMapping("admindelete")
	public String delete(String mid, Model model) {
		int result =  as.delete(mid);
		model.addAttribute("result", result);
		return "admin/admindelete";
	}
}
