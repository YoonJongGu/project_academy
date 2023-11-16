package member;

import java.sql.Date;

//	IDX         NOT NULL NUMBER        
//	USERTYPE    NOT NULL VARCHAR2(10)  
//	USERID      NOT NULL VARCHAR2(100) 
//	USERPW      NOT NULL VARCHAR2(100) 
//	USERNAME    NOT NULL VARCHAR2(50)  
//	BIRTHDATE   NOT NULL VARCHAR2(50)  
//	GENDER      NOT NULL VARCHAR2(10)  
//	EMAIL                VARCHAR2(100) 
//	JOINDATE             DATE          
//	PHONENUMBER NOT NULL VARCHAR2(30)

public class MemberDTO {
	private int idx;
	private String usertype;
	private String userid;
	private String userpw;
	private String username;
	private String birthDate;
	private String gender;
	private String email;
	private Date joinDate;
	private String phoneNumber;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
		
}
