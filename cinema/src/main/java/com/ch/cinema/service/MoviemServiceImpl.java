package com.ch.cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MoviemDao;
import com.ch.cinema.model.Moviem;


@Service
public class MoviemServiceImpl implements MoviemService{
	@Autowired
	private MoviemDao md;

	public Moviem select(String mid) {
		return md.select(mid);
	}

	public int insert(Moviem moviem) {
		return md.insert(moviem);
	}

	public List<Moviem> list() {
		return md.list();
	}

	public int update(Moviem moviem) {
		return md.update(moviem);
	}

	public int delete(String mid) {
		return md.delete(mid);
	}

	public int total(Moviem moviem) {
		return md.total(moviem);
	}

	public List<Moviem> getList(Moviem moviem) {
		return md.getList(moviem);
	}

}
