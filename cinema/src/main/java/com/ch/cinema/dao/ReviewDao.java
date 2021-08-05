package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Review;

public interface ReviewDao {

	int getMaxNum();

	void insert(Review review);

	List<Review> list(int mv_num);

	int total(int mv_num);

}
