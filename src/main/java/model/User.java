package model;

import java.util.Date;

public class User {
	
	private String user_id; //아이디	
	private String user_pw; //암호
	private String user_name; //이름
	private String user_birth; //생년월일
	private String user_gender; //성별
	private String user_addr; //주소
	private String user_tel; //전화번호
//	private String user_tel1;
//	private String user_tel2;
//	private String user_tel3;
	private String user_email; //메일
	private Date user_regist; //가입일
	private String user_point; //포인트
	private String user_grade; //고객등급

//	public String getUser_tel1() {
//		return user_tel1;
//	}
//	public void setUser_tel1(String user_tel1) {
//		this.user_tel1 = user_tel1;
//	}
//	public String getUser_tel2() {
//		return user_tel2;
//	}
//	public void setUser_tel2(String user_tel2) {
//		this.user_tel2 = user_tel2;
//	}
//	public String getUser_tel3() {
//		return user_tel3;
//	}
//	public void setUser_tel3(String user_tel3) {
//		this.user_tel3 = user_tel3;
//	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_tel() {		
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	public Date getUser_regist() {
		return user_regist;
	}
	public void setUser_regist(Date user_regist) {
		this.user_regist = user_regist;
	}
	public String getUser_point() {
		return user_point;
	}
	public void setUser_point(String user_point) {
		this.user_point = user_point;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}
	
	
}
