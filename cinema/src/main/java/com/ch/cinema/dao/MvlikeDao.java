package com.ch.cinema.dao;

import com.ch.cinema.model.Mvlike;

public interface MvlikeDao {

	int total(int like_mv_num);
	int like(Mvlike mvlike);
	Object insert(Mvlike mvlike);
	Object delete(Mvlike mvlike);
	int select(Mvlike mvlike);
	String selectid(int like_id_num);
}
