package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Moviem;


public interface AdminDao {

	int total(Moviem moviem);

	List<Moviem> getList(Moviem moviem);

	Moviem select(String mid);

	int update(Moviem moviem);

	int delete(String mid);

}
