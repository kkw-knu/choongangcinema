package com.ch.cinema.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.Mvlike;

@Repository
public class MvlikeDaoImpl implements MvlikeDao{
	@Autowired
	private SqlSessionTemplate sst;
	public int total(int like_mv_num) {
		return sst.selectOne("mvlikens.total",like_mv_num);
	}
	public int like(Mvlike mvlike) {
		return sst.selectOne("mvlikens.like", mvlike);
	}
	public Object insert(Mvlike mvlike) {
		return sst.insert("mvlikens.insert", mvlike);
	}
	public Object delete(Mvlike mvlike) {
		return sst.delete("mvlikens.delete", mvlike);
	}
	public int select(Mvlike mvlike) {
		return sst.selectOne("mvlikens.select", mvlike);
	}
	public String selectid(int like_id_num) {
		return sst.selectOne("mvlikens.selectid", like_id_num);
	}
}
