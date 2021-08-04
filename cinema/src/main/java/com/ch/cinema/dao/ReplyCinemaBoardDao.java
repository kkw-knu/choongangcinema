package com.ch.cinema.dao;
import java.util.List;

import com.ch.cinema.model.ReplyCinemaBoard;
public interface ReplyCinemaBoardDao {
	List<ReplyCinemaBoard> list(int bno);
	void delete(ReplyCinemaBoard rcb);
	void insert(ReplyCinemaBoard rcb);
	void update(ReplyCinemaBoard rcb);

}