package dao.city;
import java.util.List;

import forms.friendlinkform.FriendlinkForm;
/**
 * dao���ʵ�ַ�����
 * @author master
 *
 */
public interface CityDao {
	  
      public boolean addLink(String chinesscity , String eginashcity, String eginash
  			,String fenzhu ,String paixu);//��ӳ�����ӿ�
      
       public boolean delLink(int CityID);//ɾ��������ӿ�
       
       public boolean  gaiLink(int cityID, String chinesscity, String eginashcity,
   			String eginash, String fenzhu, String paixu); //�༭������ӿ� 
       
   	  public List <FriendlinkForm> getAllLinker();//��ѯ������ӿ�

}
