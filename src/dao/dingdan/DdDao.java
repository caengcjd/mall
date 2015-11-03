package dao.dingdan;

import java.util.List;

import forms.dingdan.DqddForm;

/**
 * 订单dao
 * 
 * @author sjx
 * 
 */
public interface DdDao {
	
	/**
	 * 向 我的订单 数据库添加一条信息
	 * @param user 用户名
	 * @param title 商品名称
	 * @param money 商品价格
	 * @param number 商品数量
	 * @return boolean
	 */
	public boolean addDindang(String user, String title, String money,
			String number);
	
	/**
	 * 得到所有订单
	 * @return List<DqddForm>
	 */
	public List<DqddForm> getAlldd();
	
	/**
	 * 删除订单
	 * @param id 订单id
	 * @return boolean
	 */
	public boolean DelDd(int id);
	
	/**
	 * 得到商品名称
	 * @param user 用户名
	 * @return List商品名称
	 */
	public List getMtopic(String user);

}
