package com.ch.cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MovieDao;
import com.ch.cinema.model.Movie;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private MovieDao md;
	public int movieinsert(Movie movie) {
		return md.movieinsert(movie);
	}
}
