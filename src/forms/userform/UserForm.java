package forms.userform;

import java.util.Date;

import mystruts.ActionForm;

public class UserForm   extends  ActionForm{
	
	private int uid=0;
	private String username;
	private String password;
	private String mobile=null;
	private String email=null;
	private String city=null;
	private String date=null;
	private String umoney=null;
	private String administer=null;
	private Date zhucetime=null;
	public String getUmoney() {
		return umoney;
	}
	public void setUmoney(String umoney) {
		this.umoney = umoney;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	 
	public Date getZhucetime() {
		return zhucetime;
	}
	public void setZhucetime(Date zhucetime) {
		this.zhucetime = zhucetime;
	}
	
	public String getAdminister() {
		return administer;
	}
	public void setAdminister(String administer) {
		this.administer = administer;
	}
	 
	 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	 
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	 
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city_id) {
		this.city= city_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
 
	

}



