package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Review;

public interface ReviewDao {

	int getMaxNum();

	void insert(Review review);

	List<Review> list(Review review);

	int total(int mv_num);

}
