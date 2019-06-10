package com.sound.web;

public class Mp3VO {
	
	private String title;
	private String artist;
	private int bno;
	private String path;
	
	
	
	
	@Override
	public String toString() {
		return "Mp3VO [title=" + title + ", artist=" + artist + ", bno=" + bno + ", path=" + path + "]";
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	

	
}
