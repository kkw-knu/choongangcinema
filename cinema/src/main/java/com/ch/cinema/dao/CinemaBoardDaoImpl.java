package com.ch.cinema.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.CinemaBoard;
@Repository
public class CinemaBoardDaoImpl implements CinemaBoardDao {
	@Autowired
	private SqlSessionTemplate sst;
//	public List<Board> list(int startRow, int endRow) {
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("startRow", startRow);
//		map.put("endRow", endRow);
//		return sst.selectList("boardns.list", map);
//	}
	public List<CinemaBoard> list(CinemaBoard board) {
		return sst.selectList("boardns.list", board);
	}
	public int getTotal(CinemaBoard board) {
		return sst.selectOne("boardns.getTotal", board);
	}
//	public int getTotal() {
//		return sst.selectOne("boardns.getTotal");
//	}
	public int getMaxNum() {
		return sst.selectOne("boardns.getMaxNum");
	}
	public int insert(CinemaBoard board) {
		return sst.insert("boardns.insert", board);
	}
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount", num);		
	}
	public CinemaBoard select(int num) {
		return sst.selectOne("boardns.select", num);
	}
	public int update(CinemaBoard board) {
		return sst.update("boardns.update", board);	
	}
	public int delete(int num) {
		return sst.update("boardns.delete", num);
	}
	public void updateStep(CinemaBoard board) {
		sst.update("boardns.updateStep", board);
	}
}