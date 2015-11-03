package forms.shanghu;

import mystruts.ActionForm;
/**
 * 新建商户
 * @author 颜敏
 *
 */
public class NewshForm extends ActionForm{
	private String name;
	private String password;
	private String customerName;
	private String interAdress;
	private String people;
	
	public String toString(){
		return name;
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
	
	
}
