package com.kg.idmine.member.repository;

import java.util.List;

import com.kg.idmine.member.model.MemberVO;

public interface IMemberMapper {

	//회원가입
	void insert(MemberVO vo);
	
	//회원탈퇴
	void delete(String mem_id);
	
	//회원정보 한명 
	MemberVO selectOne(String mem_id);
	
	//회원정보 전체
	List<MemberVO> selectAll();
	
	//아이디 중복체크(1:중복 0:중복x)
	Integer checkId(String mem_id);
	
	
	
	
}
