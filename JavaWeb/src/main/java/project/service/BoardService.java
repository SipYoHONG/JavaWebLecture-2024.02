package project.service;

import java.util.List;

import project.entity.Board;


public interface BoardService {
	public static final int COUNT_PER_PAGE = 10;

	List<Board> getBoardList(int page, String field, String query);
	
	Board getBoard(int bid);
	
	int getBoardCount();
	
	void insertBoard(Board board);
	
	void updateBoard(Board board);
	
	void deleteBoard(int bid);
	
	void increaseViewCount(int bid);
	
	void increaseReplyCount(int bid);
	
}
