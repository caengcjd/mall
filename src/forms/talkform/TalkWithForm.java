package forms.talkform;

import mystruts.ActionForm;

/**
 * ��������ʵ����
 * 
 * @author liumiaoyue
 * 
 */
public class TalkWithForm extends ActionForm {
	private int tid;
	private String saddress; 	// ����
	private String stopic; 		// ����
	private String stime; 		// ʱ��
	private String sinfo; 		// ����
	private String tuser;		// �û�
	private int num;			// ����

	public TalkWithForm() {

	}

	public TalkWithForm(int tid, String saddress, String stopic, String stime,
			String sinfo) {
		this.tid = tid;
		this.saddress = saddress;
		this.stopic = stopic;
		this.stime = stime;
		this.sinfo = sinfo;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSaddress() {
		return saddress;
	}

	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}

	public String getStopic() {
		return stopic;
	}

	public void setStopic(String stopic) {
		this.stopic = stopic;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getSinfo() {
		return sinfo;
	}

	public void setSinfo(String sinfo) {
		this.sinfo = sinfo;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTuser() {
		return tuser;
	}

	public void setTuser(String tuser) {
		this.tuser = tuser;
	}

}
