package com.ch.cinema.service;
import java.util.List;

import com.ch.cinema.model.ReplyCinemaBoard;
public interface ReplyCinemaBoardService {
	List<ReplyCinemaBoard> list(int bno);
	void delete(ReplyCinemaBoard rcb);
	void insert(ReplyCinemaBoard rcb);
	void update(ReplyCinemaBoard rcb);

}