package com.ch.cinema.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ch.cinema.model.Movie;
import com.ch.cinema.model.Mvlike;
import com.ch.cinema.model.Review;
import com.ch.cinema.service.MovieService;
import com.ch.cinema.service.MvlikeService;
import com.ch.cinema.service.PagingBean;
import com.ch.cinema.service.ReviewService;

@Controller
public class MovieController {
	@Autowired
	private MvlikeService mls;
	@Autowired
	private MovieService ms;
	@Autowired
	private ReviewService rs;
	@RequestMapping("/main.do")
	public String main() {
		return "/main/main";
	}
	@RequestMapping("/movielist.do")
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
	public String movieview(int mv_num, String pageNum, Review review, String pageNum1, Model model) {
		if (pageNum1 == null || pageNum1.equals("")) pageNum1 = "1";
		int currentPage = Integer.parseInt(pageNum1);
		int rowPerPage = 10;
		int totalcnt = rs.total(mv_num);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		review.setStartRow(startRow);
		review.setEndRow(endRow);
		review.setMv_num(mv_num);
		Movie movie = ms.select(mv_num);
		List<Review> rvlist = rs.list(review);
		int num = totalcnt - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, totalcnt);
		model.addAttribute("mv_num", mv_num);
		model.addAttribute("movie", movie);
		model.addAttribute("rvlist", rvlist);
		model.addAttribute("num", num);
		model.addAttribute("pb", pb);
		model.addAttribute("movie", movie);
		model.addAttribute("totalcnt", totalcnt);
		model.addAttribute("pageNum", pageNum);
		return "/main/movieview";
	}
	@RequestMapping("/movielike/like_id_num/{like_id_num}/like_mv_num/{like_mv_num}")
	public String movielike(@PathVariable int like_id_num, @PathVariable int like_mv_num, Model model) {
		Mvlike mvlike = new Mvlike();
		String like_id = mls.selectid(like_id_num);
		mvlike.setLike_id(like_id);
		mvlike.setLike_mv_num(like_mv_num);
		mvlike.setLike_id_num(like_id_num);
		int totallike = mls.total(like_mv_num);
		int result = mls.like(mvlike);
		model.addAttribute("totallike", totallike);
		model.addAttribute("result", result);
		return "/main/movielikebutton";
	}
	
	@RequestMapping(value = "/likebutton.do", method = RequestMethod.POST)
	public String likebutton(Mvlike mvlike) {
		int result = mls.like(mvlike);
		if(result == 0) {
			mls.insert(mvlike);
		}else {
			mls.delete(mvlike);
		}
		return "redirect:/movielike/like_id_num/"+mvlike.getLike_id_num()+"/like_mv_num/"+mvlike.getLike_mv_num();
	}
	
	@RequestMapping("/movielike1/like_id_num/{like_id_num}/like_mv_num/{like_mv_num}")
	public String movielike1(@PathVariable int like_id_num, @PathVariable int like_mv_num, Model model) {
		Mvlike mvlike = new Mvlike();
		String like_id = mls.selectid(like_id_num);
		mvlike.setLike_id(like_id);
		mvlike.setLike_mv_num(like_mv_num);
		mvlike.setLike_id_num(like_id_num);
		int totallike = mls.total(like_mv_num);
		int result = mls.like(mvlike);
		model.addAttribute("totallike", totallike);
		model.addAttribute("result", result);
		return "/main/movielikebutton2";
	}
	
	@RequestMapping(value = "/likebutton1.do", method = RequestMethod.POST)
	public String likebutton1(Mvlike mvlike) {
		int result = mls.like(mvlike);
		if(result == 0) {
			mls.insert(mvlike);
		}else {
			mls.delete(mvlike);
		}
		return "redirect:/movielike1/like_id_num/"+mvlike.getLike_id_num()+"/like_mv_num/"+mvlike.getLike_mv_num();
	}
	
	@RequestMapping("moviedelete.do")
	public String moviedelete(int mv_num, Model model) {
		
		return "/main/moviedelete";
	}
	@RequestMapping("movieupdateForm.do")
	public String movieupdateForm(int mv_num, Model model) {
		
		return "/main/movieupdateForm";
	}
}
