package com.kg.idmine.board.service;

import java.util.List;

import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.commons.SearchVO;

public interface IBoardService {

	// 게시글 등록
	void insert(BoardVO vo);

	// 검색, 페이징 기능이 포함된 게시물 목록 조회기능
	List<BoardVO> getArticleList(SearchVO search);
	Integer countArticles(SearchVO search);

	// 게시글 좋아요 상승 처리
	void updateLikeCnt(Integer board_no);

	// 게시글 상세 조회기능
	BoardVO selectOne(Integer board_no);

	// 게시글 수정
	void update(BoardVO vo);

	// 게시글 삭제 기능
	void delete(Integer board_no);
}
