package com.kg.idmine.member.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

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

	// 별명 중복확인 요청 처리
	@PostMapping("/checkNickname")
	public String checkNickname(@RequestBody String mem_nickname) {

		System.out.println("/member/checkNickname " + mem_nickname + " post");
		String result = null;

		Integer checkNum = service.checkNickname(mem_nickname);
		System.out.println("checknum: " + checkNum);
		if (checkNum == 1) {
			System.out.println("별명 중복");
			result = "N";
		} else {
			System.out.println("별명 사용가능");
			result = "Y";
		}

		return result;
	}

	// 로그인 요청 처리
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestBody MemberVO member, HttpSession session, HttpServletResponse response) {

		System.out.println("/member/loginCheck post");
		System.out.println("mem_id: " + member);

		String result = null;

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		MemberVO vo = service.selectOne(member.getMem_id());

		if (vo == null) {
			System.out.println("등록되지 않은 아이디입니다");
			result = "idFail";
		} else {
			if (encoder.matches(member.getMem_pw(), vo.getMem_pw())) {
				System.out.println("로그인 성공");
				session.setAttribute("login", vo);
				result = "loginSuccess";

				// 쿠키 만료시간 설정(90일) -> 근데 90일 저장이 안되고 한달저장됨.. 왜지?(그래서 30으로 함)
				long limitTime = 60 * 60 * 24 * 30;

//					//자동 로그인 체크시 처리
//					if(member.isAutoLogin()) {
//						System.out.println("자동 로그인 쿠키 생성중");
//						Cookie loginCookie =new Cookie("loginCookie", session.getId());
//						loginCookie.setPath("/hp/home");
//						loginCookie.setMaxAge((int)limitTime);
//						
//						response.addCookie(loginCookie);
//						
//						//자동로그인 유지시간을 날짜객체로 변환
//						//현재시간 + 설정한시간 (30일 후)
//						long expiredDate = System.currentTimeMillis()+(limitTime * 1000);
//						Date limitDate = new Date(expiredDate);
//						System.out.println(limitDate);
//						System.out.println("loginCookie : " + loginCookie);
//						service.keepLogin(session.getId(), limitDate, vo.getMem_id()());
//					}

			} else {
				System.out.println("비밀번호가 다릅니다");
				result = "pwFail";
			}
		}

		return result;
	}

	// 로그아웃 요청 처리
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {

		MemberVO member = (MemberVO) session.getAttribute("login");

		Cookie loginCookie2 = WebUtils.getCookie(request, "loginCookie");
		System.out.println("loginCookie2 : " + loginCookie2);

		if (member != null) {
			session.removeAttribute("login");
			session.invalidate();

			// 로그아웃 시 자동로그인 쿠키 삭제 및 해단 회원 정보에서 session_id 제거
			/*
			 * 1. loginCookie를 읽어온 뒤 해당 쿠키가 존해하는지 여부 확인 2. 쿠키가 존재한다면 쿠키의 수명을 0초로 다시 설정한 후
			 * (setMaxAge사용) 3. 응답객체를 통해 로컬에 0초짜리 쿠키 재전송 -> 쿠키 삭제 4. service를 통해 keepLogin을
			 * 호출하여 DB컬럼 레코드 재설정 (session_id -> "none", limit_time -> 현재시간으로)
			 */

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			System.out.println("loginCookie : " + loginCookie);

//			if (loginCookie != null) {
//				loginCookie.setMaxAge(0);
//				response.addCookie(loginCookie);
//				service.keepLogin("none", new Date(), member.getMem_id());
//			}

		}

		return new ModelAndView("redirect:/");
	}

}
