package com.ch.cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MovieDao;
import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Review;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private MovieDao md;
	public int movieinsert(Movie movie) {
		return md.movieinsert(movie);
	}
	public int getMaxNum() {
		return md.getMaxNum();
	}
	public int getTotal() {
		return md.getTotal();
	}
	public List<Movie> list(Movie movie) {
		return md.list(movie);
	}
	public Movie select(int mv_num) {
		return md.select(mv_num);
	}
	public Object evupdate(Review review) {
		return md.evupadte(review);
	}

}
