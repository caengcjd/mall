package forms.dingdan;

import mystruts.ActionForm;

/**
 * µ±ÆÚ¶©µ¥berm mydingdan
 * @author sjx
 * 
 */
public class DqddForm extends ActionForm {
	private int did;
	private String dtitle;
	private String dname;
	private String dmoney;
	private String dnumber;
	private String status;
	private String xddtime;

	public String getXddtime() {
		return xddtime;
	}

	public void setXddtime(String xddtime) {
		this.xddtime = xddtime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

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

	public String getDmoney() {
		return dmoney;
	}

	public void setDmoney(String dmoney) {
		this.dmoney = dmoney;
	}

	public String getDnumber() {
		return dnumber;
	}

	public void setDnumber(String dnumber) {
		this.dnumber = dnumber;
	}

	public String getDtitle() {
		return dtitle;
	}

	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}

}
