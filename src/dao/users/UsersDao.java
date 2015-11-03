package dao.users;

import java.util.List;

import forms.userform.UserForm;

public interface UsersDao {
	/**
	 * 
	 * @return
	 */
	public List<forms.userform.UserForm> getAllUser();

	/**
	 * 
	 * @param name
	 * @param password
	 * @param password2
	 * @param city
	 * @param email
	 * @param mobile
	 * @return
	 */
	public boolean addUser(String name, String password, String city,
			String email, String mobile);

	/**
	 * 
	 * @return
	 */
	public int getNum();

	/**
	 * 
	 * @param id
	 * @return
	 */
	public UserForm getUser(int id);

	/**
	 * 
	 * @param id
	 * @param mobile
	 * @param administer
	 * @return
	 */
	public boolean changeUser(int id, String mobile, String administer);
	
	
	
	public boolean PangDuanName(String name);

}
