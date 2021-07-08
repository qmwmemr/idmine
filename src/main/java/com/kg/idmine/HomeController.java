package com.kg.idmine;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.board.model.TotalVO;
import com.kg.idmine.board.service.IBoardService;
import com.kg.idmine.member.model.MemberVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private IBoardService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		System.out.println("index 호출: get");
		
		//사진 Top4
		List<TotalVO> list = service.photoTop();
		
		//영상 Top4
		List<BoardVO> list2 = service.videoTop();
		
		//랜덤 숫자
		int random = (int)(Math.random()*service.countAll()+1);
		
		
		model.addAttribute("photo",list);
		model.addAttribute("video",list2);
		model.addAttribute("random",random);
		
		return "home";
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		
		MemberVO vo = (MemberVO)session.getAttribute("login");
		System.out.println("로그인 정보: " + vo);
		String mem_id = vo.getMem_id();
		
		List<BoardVO> list = service.memArticle(mem_id);
		
		model.addAttribute("list",list);
		
		return "/mypage";
	}
	
	@GetMapping("/update")
	public String update(HttpSession session, Model model) {
		
		MemberVO vo = (MemberVO)session.getAttribute("login");
		System.out.println("로그인 정보: " + vo);
		String mem_id = vo.getMem_id();
		
		List<BoardVO> list = service.memArticle(mem_id);
		
		model.addAttribute("list",list);
		
		return "/memUpdate";
	}
	
	@GetMapping("/about")
	public void about() {
		
	}
	
	@GetMapping("/contact")
	public void contact() {
		
	}
	
	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	
	@GetMapping("/register")
	public String register() {
		return "/member/register";
	}
	
	
	
	
}










