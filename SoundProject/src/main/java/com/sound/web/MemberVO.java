package com.sound.web;

public class MemberVO {
	
	private String userEmail;
	private String userName;
	private String userPassword;
	private boolean check;
	
	
	@Override
	public String toString() {
		return "MemberVO [userEmail=" + userEmail + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", check=" + check + "]";
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public boolean isCheck() {
		return check;
	}
	public void setCheck(boolean check) {
		this.check = check;
	}
	

	
}
