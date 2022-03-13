package com.boot.linkrank.board;

import java.util.ArrayList;

public interface IBoardService {

	void writeBoard(BoardVO Vo);								
	ArrayList<BoardVO> listAllBoard();   					
	BoardVO detailViewBoard (String boardNo);		
	void updateBoard(BoardVO boardNo);					
	void deleteBoard(String boardNo);			
	ArrayList<BoardVO> detailMovieBoardView(String movieNo);
}
