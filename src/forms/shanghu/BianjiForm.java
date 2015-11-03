package forms.shanghu;

import mystruts.ActionForm;
/**
 * ±‡º≠…Ãªß
 * @author —’√Ù
 *
 */
public class BianjiForm extends ActionForm{
	private	int id;
	private String name;
	private String password;
	private String customerName;
	private String interAdress;
	private String people;
	private String khBank;
	private String khName;
	private String bankzf;
	private String weizhiinfo;
	private String qitainfo;
	
//	public String toString(){
//		return name;
//	}
	
	public BianjiForm(){
	}
	public BianjiForm(String name, String password,
			String customerName, String interAdress, String people,
			String khBank, String khName, String bankzf, String weizhiinfo,
			String qitainfo) {
		this.name = name;
		this.password = password;
		this.customerName = customerName;
		this.interAdress = interAdress;
		this.people = people;
		this.khBank = khBank;
		this.khName = khName;
		this.bankzf = bankzf;
		this.weizhiinfo = weizhiinfo;
		this.qitainfo = qitainfo;
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
