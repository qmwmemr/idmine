package com.kg.idmine.member.model;

import java.util.Date;

public class MemberVO {

	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_nickname;
	private String mem_mobile;
	private String mem_email;
	private String mem_addr1; //우편번호
	private String mem_addr2; //주소
	private String mem_addr3; //상세주소
	private Date mem_birth; //생년월일
	private Date mem_regdate; //회원가입한 날짜
	private String mem_loginAPI; //로그인API 
	private String session_id;
	private Date limit_time;
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_mobile() {
		return mem_mobile;
	}
	public void setMem_mobile(String mem_mobile) {
		this.mem_mobile = mem_mobile;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_addr1() {
		return mem_addr1;
	}
	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}
	public String getMem_addr2() {
		return mem_addr2;
	}
	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	public String getMem_addr3() {
		return mem_addr3;
	}
	public void setMem_addr3(String mem_addr3) {
		this.mem_addr3 = mem_addr3;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public Date getMem_regdate() {
		return mem_regdate;
	}
	public void setMem_regdate(Date mem_regdate) {
		this.mem_regdate = mem_regdate;
	}
	public String getMem_loginAPI() {
		return mem_loginAPI;
	}
	public void setMem_loginAPI(String mem_loginAPI) {
		this.mem_loginAPI = mem_loginAPI;
	}
	public String getSession_id() {
		return session_id;
	}
	public void setSession_id(String session_id) {
		this.session_id = session_id;
	}
	public Date getLimit_time() {
		return limit_time;
	}
	public void setLimit_time(Date limit_time) {
		this.limit_time = limit_time;
	}
	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_nickname="
				+ mem_nickname + ", mem_mobile=" + mem_mobile + ", mem_email=" + mem_email + ", mem_addr1=" + mem_addr1
				+ ", mem_addr2=" + mem_addr2 + ", mem_addr3=" + mem_addr3 + ", mem_birth=" + mem_birth
				+ ", mem_regdate=" + mem_regdate + ", mem_loginAPI=" + mem_loginAPI + ", session_id=" + session_id
				+ ", limit_time=" + limit_time + "]";
	}
	
	
	
	
	
	
}
