package forms.zhanghu;

import mystruts.ActionForm;
/**
 * …Ã∆∑bean
 * @author sjx
 * 
 */
public class ShopForm extends ActionForm{
	int shopid;
	String shopname;
	String shopnum;
	String shopmoney;
	
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getShopnum() {
		return shopnum;
	}
	public void setShopnum(String string) {
		this.shopnum = string;
	}
	public String getShopmoney() {
		return shopmoney;
	}
	public void setShopmoney(String shopmoney) {
		this.shopmoney = shopmoney;
	}
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	
}
