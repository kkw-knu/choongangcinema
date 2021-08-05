package com.ch.cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.ReviewDao;
import com.ch.cinema.model.Review;

@Service
public class ReviewServiceimpl implements ReviewService{
	@Autowired
	private ReviewDao rd;
	public int getMaxNum() {
		return rd.getMaxNum();
	}
	public void insert(Review review) {
		rd.insert(review);
	}
	public List<Review> list(int mv_num) {
		return rd.list(mv_num);
	}
}
