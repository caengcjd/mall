package dao.question;

import java.util.List;

import forms.questionform.QuestionForm;

/**
 * 
 * @author master
 * 
 */
public interface QuestionDao {
	/**
	 * 
	 * @return
	 */
	public boolean TiWen(String title,String info, String user);

	/**
	 * 
	 * @return
	 */
	public List<QuestionForm> getAllQ();

	/*
	 * 
	 */
	public boolean DelQuestion(int id);

	/**
	 * 
	 * @return
	 */
	public int getCount();

	/**
	 * 
	 * @param id
	 * @param info
	 * @return
	 */
	public boolean ChangeQue(int id, String info);

	/**
	 * 
	 * @param id
	 * @return
	 */
	public List<QuestionForm> CheckOne(int id);

	/**
	 * 
	 * @return
	 */
	public List<QuestionForm> getIndexQuestion();
}
