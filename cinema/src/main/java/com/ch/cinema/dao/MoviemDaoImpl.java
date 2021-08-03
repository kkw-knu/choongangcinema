package com.ch.cinema.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.Moviem;



@Repository
public class MoviemDaoImpl implements MoviemDao{
	@Autowired
	private SqlSessionTemplate sst;

	public Moviem select(String mid) {
		return sst.selectOne("moviemns.select", mid);
	}

	public int insert(Moviem moviem) {
		return sst.insert("moviemns.insert", moviem);
	}

	public List<Moviem> list() {
		return sst.selectList("moviemns.list");
	}

	public int update(Moviem moviem) {
		return sst.update("moviemns.update", moviem);
	}

	public int delete(String mid) {
		return sst.delete("moviemns.delete", mid);
	}

	public int total(Moviem moviem) {
		return sst.selectOne("moviemns.total", moviem);
	}

	public List<Moviem> getList(Moviem moviem) {
		return sst.selectList("moviemns.list", moviem);
	}
	
}
