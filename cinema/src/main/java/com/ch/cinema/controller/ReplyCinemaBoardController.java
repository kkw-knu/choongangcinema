package com.ch.cinema.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.cinema.model.CinemaBoard;
import com.ch.cinema.model.ReplyCinemaBoard;
import com.ch.cinema.service.CinemaBoardService;
import com.ch.cinema.service.ReplyCinemaBoardService;
@Controller
public class ReplyCinemaBoardController {
	@Autowired
	private ReplyCinemaBoardService rcbs;
	@Autowired
	private CinemaBoardService cbs; // 자식은 부모정보가 필요함
	@RequestMapping("/rDelete")
	public String rDelete(ReplyCinemaBoard rcb) {
		rcbs.delete(rcb);
		return "redirect:/replyList/bno/"+rcb.getBno();
	}
	@RequestMapping("/rInsert")
	public String rInsert(ReplyCinemaBoard rcb) {
		rcbs.insert(rcb);
//		redirect 또는 forward는 JSP가 아닌 Controller 내부의 다른 메서드 호출
		return "redirect:/replyList/bno/"+rcb.getBno();
	}
	@RequestMapping("/rUpdate")
	public String rUpdate(ReplyCinemaBoard rcb) {
		rcbs.update(rcb);
		return "redirect:/replyList/bno/"+rcb.getBno();
	}
	@RequestMapping("/replyList/bno/{bno}")
	public String replyList(@PathVariable int bno, Model model) {
		CinemaBoard board = cbs.select(bno);
		List<ReplyCinemaBoard> rcbdList = rcbs.list(bno);
		model.addAttribute("board", board);
		model.addAttribute("rcbdList", rcbdList);
		return "/board/replyList";
	}
}