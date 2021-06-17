package com.kg.idmine.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.board.service.IBoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private IBoardService service;
	
	@GetMapping("/post")
	public String post() {
		System.out.println("/board/post get");
		
		return "/post";	
	}
	
	@PostMapping("/post")
	public String post(BoardVO vo) {
		System.out.println("/board/post post");
		
		System.out.println("parameter: " +vo);
		
		service.insert(vo);
		
		return "redirect:/";
	}
	
}
