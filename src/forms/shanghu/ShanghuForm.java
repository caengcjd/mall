package forms.shanghu;

import mystruts.ActionForm;
/**
 * �̻�from 
 * @author yanmin
 *
 */
public class ShanghuForm extends ActionForm{
	/**
	  id int identity (1,1)not null,	  	  	-- �̻��б�id
		name varchar (8),		   	        	-- �û�����
		password varchar(10),			        -- �û�����
		customerName varchar(30),               --���̻����ƣ�
		interAdress varchar(30),				--��ַ
		people varchar(11),						--��ϵ�绰
		khBank varchar(10),						--��������
		khName varchar(12),						--������
		bankzf varchar(19)						--�����˻�
		private String weizhiinfo;
		private String qitainfo;
	 */
	private int id;					//�̻�id
	private String name;			//�û�����
	private String password;		//�û�����
	private String customerName;	//���̻����ƣ�
	private String interAdress;		//��ַ
	private String people;			//��ϵ�绰
	private String khBank;			//��������
	private String khName;			//������
	private String bankzf;			//�����˻�
	private String weizhiinfo;
	private String qitainfo;
	private String time;			//ʱ��
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
