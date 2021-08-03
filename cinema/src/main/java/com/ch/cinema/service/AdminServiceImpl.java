package com.ch.cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.AdminDao;
import com.ch.cinema.model.Moviem;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDao ad;

	public int total(Moviem moviem) {
		return ad.total(moviem);
	}

	public List<Moviem> getList(Moviem moviem) {
		
		return ad.getList(moviem);
	}

	public Moviem select(String mid) {
	
		return ad.select(mid);
	}

	public int update(Moviem moviem) {

		return ad.update(moviem);
	}

	public int delete(String mid) {
	
		return ad.delete(mid);
	}
}
