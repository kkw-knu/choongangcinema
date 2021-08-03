package com.ch.cinema.dao;

import java.util.List;

import com.ch.cinema.model.Moviem;

public interface MoviemDao {

	Moviem select(String mid);

	int insert(Moviem moviem);

	List<Moviem> list();

	int update(Moviem moviem);

	int delete(String mid);

	int total(Moviem moviem);

	List<Moviem> getList(Moviem moviem);

}
