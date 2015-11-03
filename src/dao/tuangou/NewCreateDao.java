package dao.tuangou;

import java.util.List;

import forms.tuangou.TuanGouForm;

/**
 * 
 * 实现团购所有功能接口
 * 
 * @author liumiaoyue
 * 
 */
public interface NewCreateDao {
	/**
	 * 添加团购信息
	 * 
	 * @param TuanGouForm
	 * @return boolean
	 */
	public boolean addTuanInfo(String fcity, String category, String title,
			String scprice, String tgprice, int smallnum, int bignum,
			String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform);

	/**
	 * 当前团购信息
	 * 
	 * @return List
	 */
	public List<TuanGouForm> getDangQianInfo();

	/**
	 * 所有团购信息
	 * 
	 * @return List
	 */
	public List<TuanGouForm> getTuanGou();

	/**
	 * 编辑信息
	 * 
	 * @param fid
	 * @return TuanGouForm
	 */
	public TuanGouForm getBianJiInfo(int fid);

	/**
	 * 更新信息
	 * 
	 * @param TuanGouForm
	 * @return
	 */
	public boolean updateInfo(int fid, String city, String category,
			String title, String scprice, String tgprice, int smallnum,
			int bignum, String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform);

	/**
	 * 删除信息
	 * 
	 * @param fid
	 * @return
	 */
	public boolean delInfo(int fid);
	
	
	public List<TuanGouForm> qiehuanCity(String name);
}
