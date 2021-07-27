package com.ch.cinema.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	public String movielist() {
		return "/main/movielist";
	}
	@RequestMapping("movieinsertForm.do")
	public String insertForm(int num, String pageNum, Model model) {
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		return "/main/movieinsertForm";
	}
	@RequestMapping("movieinsert.do")
	public String movieupload(@RequestParam("file") MultipartFile mf,Movie movie,
			Model model, HttpSession session) throws IOException {
		String fileName = mf.getOriginalFilename();
		String real = session.getServletContext().getRealPath("/resources/upload");
		FileOutputStream fos = new FileOutputStream(new File(real+"/"+fileName));
		fos.write(mf.getBytes());
		fos.close();
		int fileSize = (int)mf.getSize();
		int result = ms.movieinsert(movie);
		model.addAttribute("fileName", fileName);
		model.addAttribute("fileSize", fileSize);
		model.addAttribute("result", result);
		model.addAttribute("movie", movie);
		return "/main/movieinsert";
	}
	
}
