package forms.zhanghu;

import mystruts.ActionForm;

/**
 * ¶©µ¥berm
 * @author sjx
 *
 */
public class DdsForm extends ActionForm {
	private int did;
	private String dname;
	private String duser;
	private String dmoney;
	private String dtime;

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDuser() {
		return duser;
	}

	public void setDuser(String duser) {
		this.duser = duser;
	}

	public String getDmoney() {
		return dmoney;
	}

	public void setDmoney(String dmoney) {
		this.dmoney = dmoney;
	}

	public String getDtime() {
		return dtime;
	}

	public void setDtime(String dtime) {
		this.dtime = dtime;
	}

}
