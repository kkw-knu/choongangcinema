package com.ch.cinema.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Review;
import com.ch.cinema.service.MovieService;
import com.ch.cinema.service.PagingBean;
import com.ch.cinema.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;
	@Autowired
	private MovieService ms;
	@RequestMapping("/moviereviewlist/mv_num/{mv_num}")
	public String moviereviewlist(@PathVariable int mv_num, Review review, String pageNum1, Model model) {
		if (pageNum1 == null || pageNum1.equals("")) pageNum1 = "1";
		int currentPage = Integer.parseInt(pageNum1);
		int rowPerPage = 10;
		int total = rs.total(mv_num);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		review.setStartRow(startRow);
		review.setEndRow(endRow);
		review.setMv_num(mv_num);
		Movie movie = ms.select(mv_num);
		List<Review> rvlist = rs.list(review);
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		model.addAttribute("mv_num", mv_num);
		model.addAttribute("movie", movie);
		model.addAttribute("rvlist", rvlist);
		model.addAttribute("num", num);
		model.addAttribute("pb", pb);
		model.addAttribute("total", total);
		return "/main/moviereviewlist";
	}
	@RequestMapping(value = "/reviewInsert.do", method = RequestMethod.POST)
	public String reviewInsert(Review review) {
		rs.insert(review);
		return "redirect:/moviereviewlist/mv_num/"+review.getRv_mv_num();
	}
}
