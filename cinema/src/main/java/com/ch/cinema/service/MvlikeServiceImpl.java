package com.ch.cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.cinema.dao.MvlikeDao;
import com.ch.cinema.model.Mvlike;

@Service
public class MvlikeServiceImpl implements MvlikeService {
	@Autowired
	private MvlikeDao mld;
	public int total(int like_mv_num) {
		return mld.total(like_mv_num);
	}
	public int like(Mvlike mvlike) {
		return mld.like(mvlike);
	}
	public void insert(Mvlike mvlike) {
		mld.insert(mvlike);
	}
	public void delete(Mvlike mvlike) {
		mld.delete(mvlike);
	}
	public int select(Mvlike mvlike) {
		return mld.select(mvlike);
	}
	public String selectid(int like_id_num) {
		return mld.selectid(like_id_num);
	}
}
