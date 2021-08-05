package com.ch.cinema.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Review;
import com.ch.cinema.service.MovieService;
import com.ch.cinema.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;
	@Autowired
	private MovieService ms;
	@RequestMapping("/moviereviewlist/mv_num/{mv_num}")
	public String moviereviewlist(@PathVariable int mv_num, Model model) {
		Movie movie = ms.select(mv_num);
		List<Review> rvlist = rs.list(mv_num);
		model.addAttribute("movie", movie);
		model.addAttribute("rvlist", rvlist);
		return "/main/moviereviewlist";
	}
	@RequestMapping(value = "/reviewInsert.do", method = RequestMethod.POST)
	public String reviewInsert(Review review) {
		rs.insert(review);
		return "redirect:/moviereviewlist/mv_num/"+review.getRv_mv_num();
	}
}
