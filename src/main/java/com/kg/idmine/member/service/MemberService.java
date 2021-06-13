package com.kg.idmine.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kg.idmine.member.model.MemberVO;
import com.kg.idmine.member.repository.IMemberMapper;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberMapper mapper;
	
	
	@Override
	public void insert(MemberVO vo) {
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

}
