package com.kg.idmine.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kg.idmine.member.model.MemberVO;
import com.kg.idmine.member.service.IMemberService;

@RestController
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private IMemberService service;
	
	//회원가입 요청 처리
	@PostMapping("/")
	public String register(@RequestBody MemberVO vo) {
		System.out.println("/member/ post");
		
		System.out.println("parameter: " + vo);
		service.insert(vo);
		
		return "joinSuccess";
	}
	
}
