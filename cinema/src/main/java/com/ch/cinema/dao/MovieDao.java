package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Movie;

public interface MovieDao {
	int movieinsert(Movie movie);
	int getMaxNum();
	int getTotal();
	List<Movie> list(Movie movie);
	Movie select(int mv_num);
}
