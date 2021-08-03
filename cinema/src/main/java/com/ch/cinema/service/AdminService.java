package com.ch.cinema.service;

import java.util.List;

import com.ch.cinema.model.Moviem;

public interface AdminService {

	int total(Moviem moviem);

	List<Moviem> getList(Moviem moviem);

	Moviem select(String mid);

	int update(Moviem moviem);

	int delete(String mid);

}
