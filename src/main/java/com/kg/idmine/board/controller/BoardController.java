package com.kg.idmine.board.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kg.idmine.board.model.AttachImageVO;
import com.kg.idmine.board.model.BoardVO;
import com.kg.idmine.board.model.TotalVO;
import com.kg.idmine.board.service.IBoardService;
import com.kg.idmine.commons.PageCreator;
import com.kg.idmine.commons.PageVO;
import com.kg.idmine.commons.SearchVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private IBoardService service;

	// 검색 처리 이후 게시글 목록 불러오기 요청
	@GetMapping("/")
	public String list(SearchVO search, Model model) {

		System.out.println("/board/ get");
		System.out.println("parameter(페이지번호): " + search.getPage());

		PageCreator pc = new PageCreator();
		pc.setPaging(search);

		List<TotalVO> list = service.getAllList(search);
		pc.setArticleTotalCount(service.countArticles(search));
		
		List<String> image = new ArrayList<String>();
		
		for(TotalVO vo : list) {
			if(vo.getBoard_category().equals("photo")) {
				String a = vo.getUploadPath().replaceAll("\\\\", "/");
				String link = a + "/s_" + vo.getUuid() + "_" + vo.getFileName();
				
				image.add(link);
			}
		}
		
		System.out.println("image: " + image);
		
		model.addAttribute("link",image);
		model.addAttribute("list", list);
		model.addAttribute("pc", pc);

		System.out.println("conditon : " + search.getCondition());
		
		if(search.getCondition().equals("story")) {
			return "/board/story";
		}else if(search.getCondition().equals("photo")) {
			return "/board/photo";
		}else {
			return "/board/video";
		}
		
	}

	// 글작성
	@GetMapping("/post")
	public String post() {
		System.out.println("/board/post get");

		return "/board/post";
	}

	@PostMapping("/post")
	public String post(BoardVO vo, RedirectAttributes ra) {
		System.out.println("/board/post post");

		System.out.println("parameter: " + vo);
		
		
		if(vo.getBoard_link() != null) {
			
			if(vo.getBoard_link().contains("watch?v=")) {
				System.out.println("링크로 입력");
				String origin = vo.getBoard_link();
				int idx = origin.indexOf("=");
				String link = origin.substring(idx+1);
				System.out.println("추출 링크: " + link);
				
				vo.setBoard_link(link);
			}else {
				System.out.println("공유로 입력");
				String origin = vo.getBoard_link();
				int idx = origin.indexOf("e/");
				String link = origin.substring(idx+2);
				System.out.println("추출 링크: " + link);
				
				vo.setBoard_link(link);
			}
			
		}

		
		service.insert(vo);
		ra.addFlashAttribute("msg", "postSuccess");
		
		System.out.println("카테고리: "+ vo.getBoard_category());
		
		if(vo.getBoard_category().equals("story")) {
			return "redirect:/board/?condition=story";
		}else if(vo.getBoard_category().equals("photo")) {
			return "redirect:/board/?condition=photo";
		}else {
			return "redirect:/board/?condition=video";
		}
		
	}

	// 제품 상세보기
	@GetMapping("/{board_no}")
	public String content(@PathVariable Integer board_no, Model model, @ModelAttribute("p") SearchVO paging) {

		System.out.println("/board/content get");
		System.out.println("parameter(글번호): " + board_no);
		service.updateViewCnt(board_no);
		BoardVO vo = service.selectOne(board_no);
		System.out.println("parameter(글내용) : " + vo);
		model.addAttribute("article", vo);

		if(vo.getBoard_category().equals("photo")) {
			AttachImageVO image = service.imageOne(board_no);
			
			String a = image.getUploadPath().replaceAll("\\\\", "/");
						
			String link = a + "/" + image.getUuid() + "_" + image.getFileName();
			
			model.addAttribute("img",link);
		}
		
		
		
		
		return "/board/content";
	}

	// 상품 update
	@GetMapping("/update/{board_no}")
	public String update(@PathVariable Integer board_no, Model model, @ModelAttribute("p") SearchVO paging) {
		System.out.println("/board/update get");

		BoardVO vo = service.selectOne(board_no);
		System.out.println("parameter(글내용) : " + vo);

		model.addAttribute("vo", vo);

		return "/board/update";
	}

	@PostMapping("/update")
	public String update(BoardVO vo, RedirectAttributes ra) {
		System.out.println("/board/update post");

		System.out.println("parameter : " + vo);

		service.update(vo);

		Integer board_no = vo.getBoard_no();
		ra.addFlashAttribute("msg", "updateSuccess");
		
		return "redirect:/board/" + board_no;
	}

	//게시물 삭제 처리 요청
	@PostMapping("/delete")
	public String remove(Integer board_no, PageVO paging,
			RedirectAttributes ra) {

		System.out.println("URL: /board/delete => POST");
		System.out.println("parameter(글 번호): " + board_no);
		BoardVO vo = service.selectOne(board_no);
		String category = vo.getBoard_category();
		service.delete(board_no);
		ra.addFlashAttribute("msg", "deleteSuccess")
		.addAttribute("page", paging.getPage())
		.addAttribute("countPerPage", paging.getCountPerPage());

		if(category.equals("story")) {
			return "redirect:/board/?condition=story";
		}else if(category.equals("photo")) {
			return "redirect:/board/?condition=photo";
		}else {
			return "redirect:/board/?condition=video";
		}
	}

	
	
	
	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		System.out.println("/board/uploadAjaxAction post");
		
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null; //MIMR TYPE를 저장할 변수(초기화)
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				System.out.println("MIME TYPE: "+ type);
			} catch (IOException e) {
				e.printStackTrace();
			}			
			//image로 시작할 경우 true, 그렇지 않을 경우 false
			if(!type.startsWith("image")) {
				
				List<AttachImageVO> list = null;
				//상태코드 400 반환
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
			
		}
		
		
		String uploadFolder = "C:\\upload";

		//날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);

		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		//폴더가 없을때만 만들기 위해서
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		/* 이미저 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();
		
		// 배열타입의 MultipartFile의 모든 요소 출력
		for (MultipartFile multipartFile : uploadFile) {
			
			//이미지 정보 객체
			AttachImageVO vo = new AttachImageVO();
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				//방법 1. ImageIO를 통한 썸네일 생성
				multipartFile.transferTo(saveFile);
				//썸네일 생성
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);
				// 비율 
				double ratio = 3;
				//넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);	
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
				Graphics2D graphic = bt_image.createGraphics();
				graphic.drawImage(bo_image, 0, 0,width,height, null);
				ImageIO.write(bt_image, "jpg", thumbnailFile);
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
			list.add(vo);
		
		} //for end
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
		
		return result;
	}

	//이미지 불러오기
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
	
		System.out.println("/board/display get");
		
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));

			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);

		}catch (IOException e) {
			e.printStackTrace();
		}

		return result;
	}
	
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
		System.out.println("/board/deleteFile post");
		
		File file = null;
		
		try {
			
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			System.out.println("originFileName : " + originFileName);
			file = new File(originFileName);
			file.delete();
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	
	
	
	
	
	
	
}

















