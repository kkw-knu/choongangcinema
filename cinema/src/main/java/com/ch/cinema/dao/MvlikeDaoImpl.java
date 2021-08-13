package com.ch.cinema.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MvlikeDaoImpl implements MvlikeDao{
	@Autowired
	private SqlSessionTemplate sst;
}
