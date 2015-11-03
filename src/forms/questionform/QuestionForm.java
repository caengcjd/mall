package forms.questionform;

import mystruts.ActionForm;

public class QuestionForm extends ActionForm {
	private int mid;
	private String dealid;
	private String info;
	private String user;
	private String answer;
	private String time;
	private int count;

	

	public String getDealid() {
		return dealid;
	}

	public void setDealid(String dealid) {
		this.dealid = dealid;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
