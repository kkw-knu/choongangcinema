package com.ch.cinema.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.CinemaBoardDao;
import com.ch.cinema.model.CinemaBoard;
@Service
public class CinemaBoardServiceImpl implements CinemaBoardService {
	@Autowired
	private CinemaBoardDao cbd;
//	public List<CinemaBoard> list(int startRow, int endRow) {
//		return cbd.list(startRow, endRow);
//	}
	public List<CinemaBoard> list(CinemaBoard board) {
		return cbd.list(board);
	}
	public int getTotal(CinemaBoard board) {
		return cbd.getTotal(board);
	}
//	public int getTotal() {
//		return cbd.getTotal();
//	}
	public int getMaxNum() {
		return cbd.getMaxNum();
	}
	public int insert(CinemaBoard board) {
		return cbd.insert(board);
	}
	public void updateReadCount(int num) {
		cbd.updateReadCount(num);		
	}
	public CinemaBoard select(int num) {
		return cbd.select(num);
	}
	public int update(CinemaBoard board) {
		return cbd.update(board);
	}
	public int delete(int num) {
		return cbd.delete(num);
	}
	public void updateStep(CinemaBoard board) {
		cbd.updateStep(board);		
	}
}