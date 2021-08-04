package com.ch.cinema.service;
import java.util.List;

import com.ch.cinema.model.CinemaBoard;
public interface CinemaBoardService {
	List<CinemaBoard> list(CinemaBoard board);
//	List<CinemaBoard> list(int startRow, int endRow);
	int getTotal(CinemaBoard board);
//	int getTotal();
	int getMaxNum();
	int insert(CinemaBoard board);
	void updateReadCount(int num);
	CinemaBoard select(int num);
	int update(CinemaBoard board);
	int delete(int num);
	void updateStep(CinemaBoard board);

}