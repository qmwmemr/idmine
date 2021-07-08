package com.kg.idmine.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kg.idmine.board.model.AttachImageVO;
import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.board.model.TotalVO;
import com.kg.idmine.board.repository.IBoardMapper;
import com.kg.idmine.commons.SearchVO;

@Service
public class BoardService implements IBoardService {

	@Autowired
	private IBoardMapper mapper;
	
	@Override
	public void insert(BoardVO vo) {
		mapper.insert(vo);
		
		//상품등록할때 이미지가 없을 경우 조기종료
		if(vo.getImageList() == null || vo.getImageList().size() <=0) {
			return;
		}
		
		 // 향상된 for문
		for(AttachImageVO attach : vo.getImageList()) {
			
			attach.setBoard_no(vo.getBoard_no());
			mapper.imageEnroll(attach);
			System.out.println("attach: " + attach);
		}
		
		
//		//람다식 활용한 for문
//		vo.getImageList().forEach(attach ->{
//			
//			attach.setBoard_no(vo.getBoard_no());
//			mapper.imageEnroll(attach);
//			
//		});
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
		mapper.imageDelete(board_no);
		mapper.delete(board_no);
	}
	@Override
	public AttachImageVO imageOne(Integer board_no) {
		return mapper.imageOne(board_no);
	}
	
	@Override
	public void updateViewCnt(Integer board_no) {
		mapper.updateViewCnt(board_no);
	}

	@Override
	public List<TotalVO> getAllList(SearchVO search) {
		return mapper.getAllList(search);
	}
	
	@Override
	public List<TotalVO> photoTop() {
		return mapper.photoTop();
	}
	
	@Override
	public List<BoardVO> videoTop() {
		return mapper.videoTop();
	}
	
	@Override
	public List<BoardVO> memArticle(String mem_id) {
		return mapper.memArticle(mem_id);
	}
	
	@Override
	public Integer countAll() {
		return mapper.countAll();
	}
}
