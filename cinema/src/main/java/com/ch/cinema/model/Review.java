package com.ch.cinema.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Review {
	private int rv_num;
	private int rv_mv_num;
	private String rv_id; 
	private String rv_title;
	private String rv_content;
	private int rv_ev;
	private Date rv_date; 
}
