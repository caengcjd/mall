package forms.tuangou;

import mystruts.ActionForm;

public class Wqtg extends ActionForm {
	private int fid;
	private String endtime; // ����ʱ��
	private String closetime; // �ر�ʱ��

	public Wqtg(int fid, String endtime, String closetime) {
		this.fid = fid;
		this.endtime = endtime;
		this.closetime = closetime;
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

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}
}
