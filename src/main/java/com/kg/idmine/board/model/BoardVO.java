package com.kg.idmine.board.model;

import java.util.Date;
import java.util.List;

public class BoardVO {

	
	private Integer board_no; //상품 번호(pk)
	private String board_name; //상품 이름
	private String board_simple; //한줄 소개
	private String board_content; //상품 설명
	private String board_link; //영상 링크
	private String board_category; //카테고리
	private String board_id; //판매자 아이디
	private String board_nickname; //판매자 별명(회사명)
	private Integer board_likeCnt; //상품 좋아요 카운트
	private Integer board_viewCnt; //조회수 카운트
	private Date board_regDate; //글 작성날짜
	private Date board_updateDate; //글 수정 날짜
	
	private List<AttachImageVO> imageList; //이미지 정보

	
	public Integer getBoard_no() {
		return board_no;
	}

	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}

	public String getBoard_name() {
		return board_name;
	}

	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}

	public String getBoard_simple() {
		return board_simple;
	}

	public void setBoard_simple(String board_simple) {
		this.board_simple = board_simple;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_link() {
		return board_link;
	}

	public void setBoard_link(String board_link) {
		this.board_link = board_link;
	}

	public String getBoard_category() {
		return board_category;
	}

	public void setBoard_category(String board_category) {
		this.board_category = board_category;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getBoard_nickname() {
		return board_nickname;
	}

	public void setBoard_nickname(String board_nickname) {
		this.board_nickname = board_nickname;
	}

	public Integer getBoard_likeCnt() {
		return board_likeCnt;
	}

	public void setBoard_likeCnt(Integer board_likeCnt) {
		this.board_likeCnt = board_likeCnt;
	}

	public Integer getBoard_viewCnt() {
		return board_viewCnt;
	}

	public void setBoard_viewCnt(Integer board_viewCnt) {
		this.board_viewCnt = board_viewCnt;
	}

	public Date getBoard_regDate() {
		return board_regDate;
	}

	public void setBoard_regDate(Date board_regDate) {
		this.board_regDate = board_regDate;
	}

	public Date getBoard_updateDate() {
		return board_updateDate;
	}

	public void setBoard_updateDate(Date board_updateDate) {
		this.board_updateDate = board_updateDate;
	}

	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "BoardVO [board_no=" + board_no + ", board_name=" + board_name + ", board_simple=" + board_simple
				+ ", board_content=" + board_content + ", board_link=" + board_link + ", board_category="
				+ board_category + ", board_id=" + board_id + ", board_nickname=" + board_nickname + ", board_likeCnt="
				+ board_likeCnt + ", board_viewCnt=" + board_viewCnt + ", board_regDate=" + board_regDate
				+ ", board_updateDate=" + board_updateDate + ", imageList=" + imageList + "]";
	}
	
	
}
