package forms.tuangou;

import mystruts.ActionForm;
/**
 * �����Ź�forms
 * @author ����
 *
 */
public class Wqtgforms  extends ActionForm{
	private int fid;						//id
	private String city;					//����
	private String category;				//���
	private String title;					//�Ź�����
	private String scprice;					//�г���
	private String tgprice;					//�Ź���
	private String smallnum;				//�������
	private String bignum;					//�������
	private String begintime;				//��ʼʱ��
	private String endtime;					//����ʱ��
	private String closetime;				//�ر�ʱ��
	private String introduce;				//���Ž���
	private String cue;						//�ر���ʾ
	private String businessman;				//�̻�
	private String spname;					//��Ʒ����
	private String spimg1;					//��ƷͼƬ1
	private String spimg2;					//��ƷͼƬ2
	private String spimg3;					//��ƷͼƬ3
	private String orderform; 				//��������
	
	
	
	public Wqtgforms(int fid, String city, String category, String title,
			String scprice, String tgprice, String smallnum, String bignum,
			String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform) {
		this.fid = fid;
		this.city = city;
		this.category = category;
		this.title = title;
		this.scprice = scprice;
		this.tgprice = tgprice;
		this.smallnum = smallnum;
		this.bignum = bignum;
		this.begintime = begintime;
		this.endtime = endtime;
		this.closetime = closetime;
		this.introduce = introduce;
		this.cue = cue;
		this.businessman = businessman;
		this.spname = spname;
		this.spimg1 = spimg1;
		this.spimg2 = spimg2;
		this.spimg3 = spimg3;
		this.orderform = orderform;
	}
	
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getScprice() {
		return scprice;
	}
	public void setScprice(String scprice) {
		this.scprice = scprice;
	}
	public String getTgprice() {
		return tgprice;
	}
	public void setTgprice(String tgprice) {
		this.tgprice = tgprice;
	}
	public String getSmallnum() {
		return smallnum;
	}
	public void setSmallnum(String smallnum) {
		this.smallnum = smallnum;
	}
	public String getBignum() {
		return bignum;
	}
	public void setBignum(String bignum) {
		this.bignum = bignum;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getClosetime() {
		return closetime;
	}
	public void setClosetime(String closetime) {
		this.closetime = closetime;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getCue() {
		return cue;
	}
	public void setCue(String cue) {
		this.cue = cue;
	}
	public String getBusinessman() {
		return businessman;
	}
	public void setBusinessman(String businessman) {
		this.businessman = businessman;
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public String getSpimg1() {
		return spimg1;
	}
	public void setSpimg1(String spimg1) {
		this.spimg1 = spimg1;
	}
	public String getSpimg2() {
		return spimg2;
	}
	public void setSpimg2(String spimg2) {
		this.spimg2 = spimg2;
	}
	public String getSpimg3() {
		return spimg3;
	}
	public void setSpimg3(String spimg3) {
		this.spimg3 = spimg3;
	}
	public String getOrderform() {
		return orderform;
	}
	public void setOrderform(String orderform) {
		this.orderform = orderform;
	}
	
}
