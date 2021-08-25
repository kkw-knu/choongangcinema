package com.ch.cinema.service;

import com.ch.cinema.model.Mvlike;

public interface MvlikeService {
	int total(int like_mv_num);
	int like(Mvlike mvlike);
	void insert(Mvlike mvlike);
	void delete(Mvlike mvlike);
	int select(Mvlike mvlike);
	String selectid(int like_id_num);
}
