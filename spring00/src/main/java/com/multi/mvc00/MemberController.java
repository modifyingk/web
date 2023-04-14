package com.multi.mvc00;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	
	@RequestMapping("insert.multi")
	public void insert(MemberDTO dto) {
		System.out.println("클라이언트 회원가입 처리 요청됨");
		System.out.println(dto);
	}
	
	@RequestMapping("login.multi")
	public void login(MemberDTO dto) {
		System.out.println("클라이언트 로그인 처리 요청됨");
		System.out.println(dto);
	}
	
	@RequestMapping("delete.multi")
	public void delete(@RequestParam("id") String delId) {
		System.out.println("클라이언트 회원탈퇴 처리 요청됨");
		System.out.println(delId);
	}
}
