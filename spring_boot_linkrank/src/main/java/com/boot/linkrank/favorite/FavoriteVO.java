package com.boot.linkrank.favorite;

public class FavoriteVO {
	private String favNo;
	private String memId;
	private String movieNo;
	
	//db엔 없지만 같이 view에 출력할 필드
	private String movieName;
	private String movieDirector;
	private String movieActor;
	private String movieImg;
	
	
	public String getFavNo() {
		return favNo;
	}
	public void setFavNo(String favNo) {
		this.favNo = favNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieDirector() {
		return movieDirector;
	}
	public void setMovieDirector(String movieDirector) {
		this.movieDirector = movieDirector;
	}
	public String getMovieActor() {
		return movieActor;
	}
	public void setMovieActor(String movieActor) {
		this.movieActor = movieActor;
	}
	public String getMovieImg() {
		return movieImg;
	}
	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}
	
	
	
}
