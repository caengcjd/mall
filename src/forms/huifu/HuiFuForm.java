package forms.huifu;

import mystruts.ActionForm;

/**
 * 回复信息实体类
 * 
 * @author liumiaoyue
 * 
 */
public class HuiFuForm extends ActionForm {
	int hid;				// 评论id
	int hfid; 				// 回复id
	String huser; 			// 回复用户
	String hinfo; 			// 回复信息
	String htime;			// 回复时间

	public HuiFuForm() {

	}

	public HuiFuForm(int hfid, String hinfo, String htime) {
		this.hfid = hfid;
		this.hinfo = hinfo;
		this.htime = htime;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public int getHfid() {
		return hfid;
	}

	public void setHfid(int hfid) {
		this.hfid = hfid;
	}

	public String getHinfo() {
		return hinfo;
	}

	public void setHinfo(String hinfo) {
		this.hinfo = hinfo;
	}

	public String getHtime() {
		return htime;
	}

	public void setHtime(String htime) {
		this.htime = htime;
	}

	public String getHuser() {
		return huser;
	}

	public void setHuser(String huser) {
		this.huser = huser;
	}

}
