package forms.shanghu;

import mystruts.ActionForm;
/**
 * 商户from 
 * @author yanmin
 *
 */
public class ShanghuForm extends ActionForm{
	/**
	  id int identity (1,1)not null,	  	  	-- 商户列表id
		name varchar (8),		   	        	-- 用户名称
		password varchar(10),			        -- 用户密码
		customerName varchar(30),               --（商户名称）
		interAdress varchar(30),				--网址
		people varchar(11),						--联系电话
		khBank varchar(10),						--开户银行
		khName varchar(12),						--开户名
		bankzf varchar(19)						--银行账户
		private String weizhiinfo;
		private String qitainfo;
	 */
	private int id;					//商户id
	private String name;			//用户名称
	private String password;		//用户密码
	private String customerName;	//（商户名称）
	private String interAdress;		//网址
	private String people;			//联系电话
	private String khBank;			//开户银行
	private String khName;			//开户名
	private String bankzf;			//银行账户
	private String weizhiinfo;
	private String qitainfo;
	private String time;			//时间
	public String toString(){
		return name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getInterAdress() {
		return interAdress;
	}
	public void setInterAdress(String interAdress) {
		this.interAdress = interAdress;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getKhBank() {
		return khBank;
	}
	public void setKhBank(String khBank) {
		this.khBank = khBank;
	}
	public String getKhName() {
		return khName;
	}
	public void setKhName(String khName) {
		this.khName = khName;
	}
	public String getBankzf() {
		return bankzf;
	}
	public void setBankzf(String bankzf) {
		this.bankzf = bankzf;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWeizhiinfo() {
		return weizhiinfo;
	}
	public void setWeizhiinfo(String weizhiinfo) {
		this.weizhiinfo = weizhiinfo;
	}
	public String getQitainfo() {
		return qitainfo;
	}
	public void setQitainfo(String qitainfo) {
		this.qitainfo = qitainfo;
	}
}
