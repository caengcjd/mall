package forms.city;

import mystruts.ActionForm;
/**
 * 
 * @author ЭSаж
 *
 */
public class CityForm extends ActionForm{
    private int CityID; 
    private String chinesscity;
    private String eginashcity;
    private String eginash;
    private String fenzhu;
    private String paixu;
    
	public int getCityID() {
		return CityID;
	}
	public void setCityID(int cityID) {
		CityID = cityID;
	}
	public String getChinesscity() {
		return chinesscity;
	}
	public void setChinesscity(String chinesscity) {
		this.chinesscity = chinesscity;
	}
	public String getEginashcity() {
		return eginashcity;
	}
	public void setEginashcity(String eginashcity) {
		this.eginashcity = eginashcity;
	}
	public String getEginash() {
		return eginash;
	}
	public void setEginash(String eginash) {
		this.eginash = eginash;
	}
	public String getFenzhu() {
		return fenzhu;
	}
	public void setFenzhu(String fenzhu) {
		this.fenzhu = fenzhu;
	}
	public String getPaixu() {
		return paixu;
	}
	public void setPaixu(String paixu) {
		this.paixu = paixu;
	}
}
