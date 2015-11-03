package dao.zhanghu;

import java.util.List;

import forms.tuangou.TuanGouForm;
import forms.userform.UserForm;
import forms.zhanghu.ShopForm;

/**
 * ÕË»§Dao
 * @author sjx
 *
 */
public interface ZhanghuDao {
	
	/**
	 * 
	 * @param username
	 * @return
	 */
	public String getMoney(String username);
/**
 * 
 * @param name
 * @param money
 * @return
 */
	public boolean ChongZhi(String name, String money);
	/**
	 * 
	 * @param username
	 * @param endmoney
	 * @return
	 */
	public boolean DelMoney(String username,int endmoney);
	/**
	 * 
	 * @return
	 */
	public int getTodayZc();

	/**
	 * 
	 * @param username
	 * @return
	 */
	public String getMAXMid(String username);

}
