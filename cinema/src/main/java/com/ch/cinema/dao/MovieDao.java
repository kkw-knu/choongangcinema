package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Review;

public interface MovieDao {
	int movieinsert(Movie movie);
	int getMaxNum();
	int getTotal();
	List<Movie> list(Movie movie);
	Movie select(int mv_num);
	Object evupadte(Review review);
	int delete(int mv_num);
	Object likedelete(int mv_num);
	Object reviewdelete(int mv_num);
	int update(Movie movie);
	Object rvupdate(Movie movie);
}
