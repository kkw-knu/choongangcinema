package com.ch.cinema.service;

import java.util.List;

import com.ch.cinema.model.Review;

public interface ReviewService {

	int getMaxNum();

	void insert(Review review);

	List<Review> list(int num);

}
