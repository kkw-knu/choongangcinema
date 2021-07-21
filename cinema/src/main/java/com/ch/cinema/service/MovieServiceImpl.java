package com.ch.cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MovieDao;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private MovieDao md;
}
