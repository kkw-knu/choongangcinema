package com.ch.cinema.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.Movie;

@Repository
public class MovieDaoImpl implements MovieDao{
	@Autowired
	private SqlSessionTemplate sst;
	public int movieinsert(Movie movie) {
		return sst.insert("moviens.movieinsert", movie);
	}
	public int getMaxNum() {
		return sst.selectOne("moviens.getMaxNum");
	}
	public int getTotal() {
		return sst.selectOne("moviens.getTotal");
	}
	public List<Movie> list(Movie movie) {
		return sst.selectList("moviens.list", movie);
	}
	public Movie select(int mv_num) {
		return sst.selectOne("moviens.select", mv_num);
	}
}
