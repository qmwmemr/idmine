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

	// 회원가입 요청 처리
	@PostMapping("/")
	public String register(@RequestBody MemberVO vo) {
		System.out.println("/member/ post");

		System.out.println("parameter: " + vo);
		service.insert(vo);

		return "joinSuccess";
	}

	// 아이디 중복확인 요청 처리
	@PostMapping("/checkId")
	public String checkId(@RequestBody String mem_id) {

		System.out.println("/member/checkId " + mem_id + " post");
		String result = null;

		Integer checkNum = service.checkId(mem_id);
		System.out.println("checknum: " + checkNum);
		if (checkNum == 1) {
			System.out.println("아이디 중복");
			result = "N";
		} else {
			System.out.println("아이디 사용가능");
			result = "Y";
		}

		return result;
	}

	// 아이디 중복확인 요청 처리
	@PostMapping("/checkNickname")
	public String checkNickname(@RequestBody String mem_nickname) {

		System.out.println("/member/checkNickname " + mem_nickname + " post");
		String result = null;

		Integer checkNum = service.checkNickname(mem_nickname);
		System.out.println("checknum: " + checkNum);
		if (checkNum == 1) {
			System.out.println("아이디 중복");
			result = "N";
		} else {
			System.out.println("아이디 사용가능");
			result = "Y";
		}

		return result;
	}

}
