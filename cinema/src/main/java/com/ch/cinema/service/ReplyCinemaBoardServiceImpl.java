package com.ch.cinema.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.ReplyCinemaBoardDao;
import com.ch.cinema.model.ReplyCinemaBoard;
@Service
public class ReplyCinemaBoardServiceImpl implements ReplyCinemaBoardService {
	@Autowired
	private ReplyCinemaBoardDao rcbd;
	public List<ReplyCinemaBoard> list(int bno) {
		return rcbd.list(bno);
	}
	public void delete(ReplyCinemaBoard rcb) {
		rcbd.delete(rcb);	
	}
	public void insert(ReplyCinemaBoard rcb) {
		rcbd.insert(rcb);		
	}
	public void update(ReplyCinemaBoard rcb) {
		rcbd.update(rcb);
	}
}