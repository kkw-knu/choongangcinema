package com.ch.cinema.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ch.cinema.service.PagingBean;
import com.ch.cinema.model.Movie;
import com.ch.cinema.service.MovieService;

@Controller
public class MovieController {
	@Autowired
	private MovieService ms;
	@RequestMapping("main.do")
	public String main() {
		return "/main/main";
	}
	@RequestMapping("movielist.do")
	public String movielist(Movie movie, String pageNum, Model model) {
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 8;
		int total = ms.getTotal();
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		movie.setStartRow(startRow);
		movie.setEndRow(endRow);
		List<Movie> list = ms.list(movie);
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		model.addAttribute("movie", movie);
		model.addAttribute("num", num);
		model.addAttribute("pb", pb);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		return "/main/movielist";
	}
	@RequestMapping("movieinsertForm.do")
	public String insertForm(int mv_num, String pageNum, Model model) {
		model.addAttribute("mv_num", mv_num);
		model.addAttribute("pageNum", pageNum);
		return "/main/movieinsertForm";
	}
	@RequestMapping("movieinsertchk.do")
	public String movieinsertchk(@RequestParam("file") MultipartFile mf,Movie movie,
			Model model, HttpSession session) throws IOException {
		String fileName = mf.getOriginalFilename();
		String real = session.getServletContext().getRealPath("/resources/upload");
		FileOutputStream fos = new FileOutputStream(new File(real+"/"+fileName));
		fos.write(mf.getBytes());
		fos.close();
		int fileSize = (int)mf.getSize();
		model.addAttribute("fileName", fileName);
		model.addAttribute("fileSize", fileSize);
		model.addAttribute("movie", movie);
		return "/main/movieinsertchk";
	}
	@RequestMapping("movieinsert.do")
	public String movieinsert(Movie movie, Model model) {
		int mv_num = ms.getMaxNum();
		movie.setMv_num(mv_num);
		int result = ms.movieinsert(movie);
		model.addAttribute("result", result);
		return "/main/movieinsert";
	}
	@RequestMapping("movieview.do")
	public String movieview(int mv_num, String pageNum, Model model) {
		Movie movie = ms.select(mv_num);
		model.addAttribute("movie", movie);
		model.addAttribute("pageNum", pageNum);
		return "/main/movieview";
	}
	
}
