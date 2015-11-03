package dao.dingdan;

import java.util.List;

import forms.dingdan.DqddForm;

/**
 * ����dao
 * 
 * @author sjx
 * 
 */
public interface DdDao {
	
	/**
	 * �� �ҵĶ��� ���ݿ����һ����Ϣ
	 * @param user �û���
	 * @param title ��Ʒ����
	 * @param money ��Ʒ�۸�
	 * @param number ��Ʒ����
	 * @return boolean
	 */
	public boolean addDindang(String user, String title, String money,
			String number);
	
	/**
	 * �õ����ж���
	 * @return List<DqddForm>
	 */
	public List<DqddForm> getAlldd();
	
	/**
	 * ɾ������
	 * @param id ����id
	 * @return boolean
	 */
	public boolean DelDd(int id);
	
	/**
	 * �õ���Ʒ����
	 * @param user �û���
	 * @return List��Ʒ����
	 */
	public List getMtopic(String user);

}
