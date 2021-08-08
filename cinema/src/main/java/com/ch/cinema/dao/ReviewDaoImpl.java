package com.ch.cinema.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired
	private SqlSessionTemplate sst;
	public int getMaxNum() {
		return sst.selectOne("reviewns.getMaxNum");
	}
	public void insert(Review review) {
		sst.insert("reviewns.insert", review);
		
	}
	public List<Review> list(Review review) {
		return sst.selectList("reviewns.list", review);
	}
	public int total(int mv_num) {
		return sst.selectOne("reviewns.total", mv_num);
	}
}
