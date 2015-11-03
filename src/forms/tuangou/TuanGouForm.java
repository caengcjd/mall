package forms.tuangou;

import mystruts.ActionForm;

/**
 * 团购信息实体类
 * 
 * @author liumiaoyue
 * 
 */
public class TuanGouForm extends ActionForm {

//	private int fid;
	private String city; // --城市
	private String category; // --类别
	private String title; // --团购标题
	private String scprice; // --市场价
	private String tgprice; // --团购价
	private int smallnum; // --最低数量
	private int bignum; // --最大数量
	private String begintime; // --开始时间
	private String endtime; // --结束时间
	private String closetime; // --结束时间
	private String introduce; // --本团介绍
	private String cue; // --特别提示
	private String businessman; // --商户
	private String spname; // --商品名称
	private String spimg1; // --商品图片1
	private String spimg2; // --商品图片1
	private String spimg3; // --商品图片1
	private String orderform; // --订单详情

	public TuanGouForm() {

	}

	public TuanGouForm(String city, String category, String title,
			String scprice, String tgprice, int smallnum, int bignum,
			String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform) {
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
/*
	public TuanGouForm(int fid, String city, String category, String title,
			String scprice, String tgprice, int smallnum, int bignum,
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
*/
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

	public int getSmallnum() {
		return smallnum;
	}

	public void setSmallnum(int smallnum) {
		this.smallnum = smallnum;
	}

	public int getBignum() {
		return bignum;
	}

	public void setBignum(int bignum) {
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
