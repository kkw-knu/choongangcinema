package com.ch.cinema.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.cinema.model.ReplyCinemaBoard;
@Repository
public class ReplyCinemaBoardDaoImpl implements ReplyCinemaBoardDao {
	@Autowired
	private SqlSessionTemplate sst;
	public List<ReplyCinemaBoard> list(int bno) {
		return sst.selectList("rcbdns.list", bno);
	}
	public void delete(ReplyCinemaBoard rcb) {
		sst.update("rcbdns.delete", rcb.getRno());		
	}
	public void insert(ReplyCinemaBoard rcb) {
		sst.insert("rcbdns.insert", rcb);			
	}
	public void update(ReplyCinemaBoard rcb) {
		sst.update("rcbdns.update", rcb);	
	}
}