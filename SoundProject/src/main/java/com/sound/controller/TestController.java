package com.sound.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sound.dao.MemberDAO;
import com.sound.dao.MemberDAOImpl;
import com.sound.dao.Mp3DAO;
import com.sound.web.MemberVO;
import com.sound.web.Mp3VO;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@RequestMapping(value= "/", method= {RequestMethod.GET,RequestMethod.POST})
	public String main() {
		logger.info("main() called..");
		return "main";
	}
	
	
	

	
	@RequestMapping(value="/signIn", method=RequestMethod.POST)
	public String signIn() {
		logger.info("signIn() called..");
		return "/wrap/signIn";
	}
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String upload() {
		logger.info("upload() called..");
		return "/wrap/upload";
	}
	@RequestMapping(value="/createAccount", method=RequestMethod.POST)
	public String createAccount() {
		logger.info("createAccount() called..");
		return "/wrap/createAccount";
	}
	
	
	
	
	@RequestMapping(value="/needHelp", method=RequestMethod.POST)
	public String needHelp() {
		logger.info("needHelp() called..");
		return "/wrap/needHelp";
	}
	@RequestMapping(value="/needHelpID", method=RequestMethod.POST)
	public String needHelpID() {
		logger.info("needHelpID() called..");
		return "/wrap/needHelpID";
	}
	@RequestMapping(value="/needHelpPW", method=RequestMethod.POST)
	public String needHelpPW() {
		logger.info("needHelpPW() called..");
		return "/wrap/needHelpPW";
	}
	@RequestMapping(value="/play", method=RequestMethod.GET)
	public String play() {
		logger.info("play() called..");
		return "/wrap/play";
	}
	
	//회원가입
	@Inject
	private MemberDAO dao;
	@RequestMapping(value="/createAccountSucess", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public String insertMember(HttpServletRequest request) throws Exception {
		
		System.out.println("email : " + request.getParameter("email"));
		System.out.println("name : " + request.getParameter("name"));
		System.out.println("pw : " + request.getParameter("password"));
		MemberVO vo = new MemberVO();
		vo.setUserEmail(request.getParameter("email"));
		vo.setUserName(request.getParameter("name"));
		vo.setUserPassword(request.getParameter("password"));
		
		dao.insertMember(vo);
		
		logger.info("insertMember Sucess");
		return "main";
	}
	//로그인
	@Inject
	private MemberDAO dao3;
	@RequestMapping(value="/signInCheck", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public String signInCheck(HttpServletRequest request, Model model) throws Exception {
		/*MemberVO vo = new MemberVO();
		
		vo.setUserEmail(request.getParameter("email"));
		vo.setUserPassword(request.getParameter("password"));
		
		ModelAndView mav = new ModelAndView();
		boolean result = dao3.loginCheck(vo);
		
		if(result) {
			MemberVO vo2 = dao3.viewMember(vo);
			//세션 변수등록
			session.setAttribute("userEmail", vo2.getUserName());
			session.setAttribute("userName", vo2.getUserEmail());
			
			if(result == true) { //로그인 성공
				mav.setViewName("main3");
				mav.addObject("msg","success");
			}
			
		}
		
		
		return mav;*/
		
		MemberVO vo = new MemberVO();
		vo.setUserEmail(request.getParameter("email"));
		
		dao.signInCheck(vo);
		
		logger.info("checked");
		
		String email = request.getParameter("email");
		logger.info("name printing : " + email);
		model.addAttribute("email", email);
		
		logger.info("select member Sucess");
		return "main2";
		//세션으로 이메일 유지 찾기
		
	}
	//검색
	@Inject
	private Mp3DAO dao2;
	@RequestMapping(value="/Search", method=RequestMethod.GET)
	public String ContentSearchResult(HttpServletRequest request, Model model) throws Exception {
		Mp3VO vo = new Mp3VO();
		//search바에 폼값을 vo에 저장
		vo.setTitle(request.getParameter("search"));
		
		dao2.search(vo);
		
		
		String title = request.getParameter("search");
		
		dao2.list(title);
		model.addAttribute("title", title);
		logger.info("dao2.list : " + title);
		
		//검색 값을 뷰에 넘겨줌
		model.addAttribute("list", dao2.list(title));
		return "main3";
	}
	
	
	@RequestMapping(value="/Chart", method=RequestMethod.GET)
	public String Chart(HttpServletRequest request, Model model) throws Exception {
		Mp3VO vo = new Mp3VO();
		//search바에 폼값을 vo에 저장
		
		
		dao2.listAll();
		
		logger.info("dao2.listAll : " );
		
		//검색 값을 뷰에 넘겨줌
		model.addAttribute("list", dao2.listAll());
		return "main3";
	}
	/////////////////////////////////////////// 08-10 세션추가작업
	
}

