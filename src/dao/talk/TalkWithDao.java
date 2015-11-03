package dao.talk;

import java.util.List;

import forms.huifu.HuiFuForm;
import forms.talkform.TalkWithForm;

/**
 * 讨论区的接口
 * 
 * @author liumiaoyue
 * 
 */
public interface TalkWithDao {
	/**
	 * 得到所有信息
	 * 
	 * @return List
	 */
	public List<TalkWithForm> getTalkInfo();

	/**
	 * 得到一条评论信息
	 * 
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo();

	/**
	 * 
	 * 添加评论信息
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
	 * 得到区域评论
	 * 
	 * @param saddress
	 * @return List
	 */
	public List<TalkWithForm> getAddressInfo(String saddress);

	/**
	 * 
	 * 得到一条刚评论的信息
	 * 
	 * @param tid
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo(int tid);

	/**
	 * 得到所有回复信息
	 * 
	 * @param hfid
	 * @return List
	 */
	public List<HuiFuForm> getHFInfo(int hfid, String name);

	/**
	 * 
	 * 添加回复信息
	 * 
	 * @param hfid
	 * @param hinfo
	 * @param htime
	 * @return boolean
	 */
	public boolean addHFInfo(int hfid, String hinfo, String htime, String name);

}
