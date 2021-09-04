package com.ch.cinema.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Review;

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
	public Object evupadte(Review review) {
		return sst.update("moviens.evupdate", review);
	}
	public int delete(int mv_num) {
		return sst.delete("moviens.delete", mv_num);
	}
	public Object likedelete(int mv_num) {
		return sst.delete("moviens.likedelete", mv_num);
	}
	public Object reviewdelete(int mv_num) {
		return sst.delete("moviens.reviewdelete", mv_num);
	}
	public int update(Movie movie) {
		return sst.update("moviens.update",movie);
	}
	public Object rvupdate(Movie movie) {
		return sst.update("moviens.rvupdate", movie);
	}

}
