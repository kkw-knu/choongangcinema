package com.ch.cinema.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Movie {
	private String mv_title;
	private String mv_director;
	private String mv_genre;
	private String mv_grade;
	private String mv_img;
	private String mv_content;
	private Date mv_startdate;
	private int mv_time;
}
