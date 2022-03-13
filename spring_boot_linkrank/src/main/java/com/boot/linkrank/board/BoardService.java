package com.boot.linkrank.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardService implements IBoardService {
@Autowired
@Qualifier("IBoardDAO")
IBoardDAO dao;
	
	@Override
	public void writeBoard(BoardVO Vo) {
		// TODO Auto-generated method stub
		dao.writeBoard(Vo);
	}

	@Override
	public ArrayList<BoardVO> listAllBoard() {
		// TODO Auto-generated method stub
		return dao.listAllBoard();
	}

	@Override
	public BoardVO detailViewBoard(String boardNo) {
		// TODO Auto-generated method stub
		return dao.detailViewBoard(boardNo);
	}

	@Override
	public void updateBoard(BoardVO boardNo) {
		// TODO Auto-generated method stub
		dao.updateBoard(boardNo);
	}

	@Override
	public void deleteBoard(String boardNo) {
		// TODO Auto-generated method stub
		dao.deleteBoard(boardNo);
	}
	@Override
	public ArrayList<BoardVO> detailMovieBoardView(String movieNo){
		return dao.detailMovieBoardView(movieNo);
	}
}
