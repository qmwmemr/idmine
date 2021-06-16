package com.kg.idmine.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.board.repository.IBoardMapper;
import com.kg.idmine.commons.SearchVO;

@Service
public class BoardService implements IBoardService {

	@Autowired
	private IBoardMapper mapper;
	
	@Override
	public void insert(BoardVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<BoardVO> getArticleList(SearchVO search) {
		return mapper.getArticleList(search);
	}

	@Override
	public Integer countArticles(SearchVO search) {
		return mapper.countArticles(search);
	}

	@Override
	public void updateLikeCnt(Integer board_no) {
		mapper.updateLikeCnt(board_no);
	}

	@Override
	public BoardVO selectOne(Integer board_no) {
		return mapper.selectOne(board_no);
	}

	@Override
	public void update(BoardVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(Integer board_no) {
		mapper.delete(board_no);
	}

}
