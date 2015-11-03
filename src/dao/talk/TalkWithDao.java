package dao.talk;

import java.util.List;

import forms.huifu.HuiFuForm;
import forms.talkform.TalkWithForm;

/**
 * �������Ľӿ�
 * 
 * @author liumiaoyue
 * 
 */
public interface TalkWithDao {
	/**
	 * �õ�������Ϣ
	 * 
	 * @return List
	 */
	public List<TalkWithForm> getTalkInfo();

	/**
	 * �õ�һ��������Ϣ
	 * 
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo();

	/**
	 * 
	 * ���������Ϣ
	 * 
	 * @param saddress
	 * @param stopic
	 * @param stime
	 * @param sinfo
	 * @return boolean
	 */
	public boolean addTalkInfo(String saddress, String stopic, String stime,
			String sinfo, String name);

	/**
	 * 
	 * �õ���������
	 * 
	 * @param saddress
	 * @return List
	 */
	public List<TalkWithForm> getAddressInfo(String saddress);

	/**
	 * 
	 * �õ�һ�������۵���Ϣ
	 * 
	 * @param tid
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo(int tid);

	/**
	 * �õ����лظ���Ϣ
	 * 
	 * @param hfid
	 * @return List
	 */
	public List<HuiFuForm> getHFInfo(int hfid, String name);

	/**
	 * 
	 * ��ӻظ���Ϣ
	 * 
	 * @param hfid
	 * @param hinfo
	 * @param htime
	 * @return boolean
	 */
	public boolean addHFInfo(int hfid, String hinfo, String htime, String name);

}
