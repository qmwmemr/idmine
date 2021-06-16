package com.kg.idmine.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kg.idmine.member.model.MemberVO;
import com.kg.idmine.member.repository.IMemberMapper;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberMapper mapper;

	@Override
	public void insert(MemberVO vo) {

		// 회원 비밀번호를 암호화 인코딩
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("암호화 전 : " + vo.getMem_pw());

		// 비밀번호를 암호화하여 다시 user객체에 저장
		String securePW = encoder.encode(vo.getMem_pw());
		vo.setMem_pw(securePW);
		System.out.println("암호화 후 : " + vo.getMem_pw());
		
		mapper.insert(vo);
	}

	@Override
	public void delete(String mem_id) {
		mapper.delete(mem_id);
	}

	@Override
	public MemberVO selectOne(String mem_id) {
		return mapper.selectOne(mem_id);
	}

	@Override
	public List<MemberVO> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public Integer checkId(String mem_id) {
		return mapper.checkId(mem_id);
	}

	@Override
	public Integer checkNickname(String mem_nickname) {
		return mapper.checkNickname(mem_nickname);
	}

}
