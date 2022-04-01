package com.itwillbs.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardDAO {
	// 게시판 DB(itwill_board) 관련된 정보를 처리하는 객체
	
	// 공통 변수 선언
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql="";
	
	
	// 디비연결 메서드
	private Connection getCon() throws Exception{

		
		return null;
	}
	
}
