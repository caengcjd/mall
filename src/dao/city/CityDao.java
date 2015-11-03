package dao.city;
import java.util.List;

import forms.friendlinkform.FriendlinkForm;
/**
 * dao层的实现方法类
 * @author master
 *
 */
public interface CityDao {
	  
      public boolean addLink(String chinesscity , String eginashcity, String eginash
  			,String fenzhu ,String paixu);//添加城市类接口
      
       public boolean delLink(int CityID);//删除城市类接口
       
       public boolean  gaiLink(int cityID, String chinesscity, String eginashcity,
   			String eginash, String fenzhu, String paixu); //编辑城市类接口 
       
   	  public List <FriendlinkForm> getAllLinker();//查询城市类接口

}
