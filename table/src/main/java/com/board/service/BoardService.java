package com.board.service;

import java.util.List;

import com.board.domain.BoardVO;
import com.board.domain.Criteria;
import com.board.domain.SearchCriteria;

public interface BoardService {

	//public List<BoardVO> list() throws Exception;

	public void write(BoardVO vo) throws Exception;
	
	// 게시물 조회
	public BoardVO view(int bno) throws Exception;

	// 게시물 수정
	public void modify(BoardVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	public int listCount() throws Exception;
	
	public int countSearch(SearchCriteria scri) throws Exception;
}
