package dao.friendlink;

import java.util.List;

import forms.friendlinkform.FriendlinkForm;

public interface FriendlinkDao {
	/**
	 * 
	 * @return
	 */
	public boolean addLink(String title,String url,String logo);

	/**
	 * 
	 * @return
	 */
	public boolean delLink(int id);
	
	
	public boolean changLink(int id,String title,String url,String logo);

	/**
	 * 
	 * @return
	 */
	public List <FriendlinkForm> getAllLink();
}
