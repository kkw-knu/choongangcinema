package com.ch.cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MvlikeDao;

@Service
public class MvlikeServiceImpl implements MvlikeService {
	@Autowired
	private MvlikeDao mld;
}
