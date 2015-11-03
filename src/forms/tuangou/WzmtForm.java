package forms.tuangou;

import mystruts.ActionForm;
/**
 * 玩转美团forms
 * @author 颜敏
 *
 */
public class WzmtForm extends ActionForm{
	/**
	 * fenxiang varchar(300),
		xiaofei varchar(300),
		pingjia varchar(300),
		--美团网是什么？
		mtssh varchar(50),		
		mtsshnr varchar(300),
		
		--今天的团购看起来不错，怎么购买？
		jttgbuzemgm varchar(50),	
		jttgbuzemgmnr varchar(300),
		
		--如何付款，安全么？
		rhfk varchar(50),		
		rhfknr varchar(300),
		
		--如果参加团购人数不足，怎么办？
		tgrsbz varchar(50),		
		tgrsbznr varchar(300),
		
		--什么是美团券，怎么使用？
		shsmtj varchar(50),		
		shsmtjnr varchar(300),
		
		--使用美团券时，能同时享用其他优惠么？
		symtjyh varchar(50),		
		symtjyhnr varchar(300),
		
		--我购买的美团券，可以给其他人使用么？
		mymtj varchar(50),
		mymtjnr varchar(300),
		
		--积分有什么用？怎样获得积分？
		jfsmh varchar(50),
		jfsmhnr varchar(300),
		
		--我收不到美团的邮件，怎么办？
		wshdyj varchar(50),
		wshdyjnr varchar(300),
		
		--如何添加？ 如何退订美团发给我的每日团购邮件？
		rhtjyj varchar(50),
		rhtjyjnr varchar(300),
		
		--什么情况下可以退款？
		smqktk varchar(50),
		smqktknr varchar(300),
		
		--我是商家，想在美团网组织团购，怎么联系？ 
		sjzztglx varchar(50),
		sjzztglxnr varchar(300),
		--没团是什么
		mtssm varchar(50),
	 */
	private String fenxiang;
	private String xiaofei;
	private String pingjia;
	private String mtssh;
	private String mtsshnr;
	private String jttgbuzemgm;
	private String jttgbuzemgmnr;
	private String rhfk;
	private String rhfknr;
	private String tgrsbz;
	private String tgrsbznr;
	private String shsmtj;
	private String shsmtjnr;
	private String symtjyh;
	private String symtjyhnr;
	private String mymtj;
	private String mymtjnr;
	private String jfsmh;
	private String jfsmhnr;
	private String wshdyj;
	private String wshdyjnr;
	private String rhtjyj;
	private String rhtjyjnr;
	private String smqktk;
	private String smqktknr;
	private String sjzztglx;
	private String sjzztglxnr;
	private String mtssm;

	public String toString(){
		return fenxiang;
	}

	public String getFenxiang() {
		return fenxiang;
	}

	public void setFenxiang(String fenxiang) {
		this.fenxiang = fenxiang;
	}

	public String getXiaofei() {
		return xiaofei;
	}

	public void setXiaofei(String xiaofei) {
		this.xiaofei = xiaofei;
	}

	public String getPingjia() {
		return pingjia;
	}

	public void setPingjia(String pingjia) {
		this.pingjia = pingjia;
	}

	public String getMtssh() {
		return mtssh;
	}

	public void setMtssh(String mtssh) {
		this.mtssh = mtssh;
	}

	public String getMtsshnr() {
		return mtsshnr;
	}

	public void setMtsshnr(String mtsshnr) {
		this.mtsshnr = mtsshnr;
	}

	public String getJttgbuzemgm() {
		return jttgbuzemgm;
	}

	public void setJttgbuzemgm(String jttgbuzemgm) {
		this.jttgbuzemgm = jttgbuzemgm;
	}

	public String getJttgbuzemgmnr() {
		return jttgbuzemgmnr;
	}

	public void setJttgbuzemgmnr(String jttgbuzemgmnr) {
		this.jttgbuzemgmnr = jttgbuzemgmnr;
	}

	public String getRhfk() {
		return rhfk;
	}

	public void setRhfk(String rhfk) {
		this.rhfk = rhfk;
	}

	public String getRhfknr() {
		return rhfknr;
	}

	public void setRhfknr(String rhfknr) {
		this.rhfknr = rhfknr;
	}

	public String getTgrsbz() {
		return tgrsbz;
	}

	public void setTgrsbz(String tgrsbz) {
		this.tgrsbz = tgrsbz;
	}

	public String getTgrsbznr() {
		return tgrsbznr;
	}

	public void setTgrsbznr(String tgrsbznr) {
		this.tgrsbznr = tgrsbznr;
	}

	public String getShsmtj() {
		return shsmtj;
	}

	public void setShsmtj(String shsmtj) {
		this.shsmtj = shsmtj;
	}

	public String getShsmtjnr() {
		return shsmtjnr;
	}

	public void setShsmtjnr(String shsmtjnr) {
		this.shsmtjnr = shsmtjnr;
	}

	public String getSymtjyh() {
		return symtjyh;
	}

	public void setSymtjyh(String symtjyh) {
		this.symtjyh = symtjyh;
	}

	public String getSymtjyhnr() {
		return symtjyhnr;
	}

	public void setSymtjyhnr(String symtjyhnr) {
		this.symtjyhnr = symtjyhnr;
	}

	public String getMymtj() {
		return mymtj;
	}

	public void setMymtj(String mymtj) {
		this.mymtj = mymtj;
	}

	public String getMymtjnr() {
		return mymtjnr;
	}

	public void setMymtjnr(String mymtjnr) {
		this.mymtjnr = mymtjnr;
	}

	public String getJfsmh() {
		return jfsmh;
	}

	public void setJfsmh(String jfsmh) {
		this.jfsmh = jfsmh;
	}

	public String getJfsmhnr() {
		return jfsmhnr;
	}

	public void setJfsmhnr(String jfsmhnr) {
		this.jfsmhnr = jfsmhnr;
	}

	public String getWshdyj() {
		return wshdyj;
	}

	public void setWshdyj(String wshdyj) {
		this.wshdyj = wshdyj;
	}

	public String getWshdyjnr() {
		return wshdyjnr;
	}

	public void setWshdyjnr(String wshdyjnr) {
		this.wshdyjnr = wshdyjnr;
	}

	public String getRhtjyj() {
		return rhtjyj;
	}

	public void setRhtjyj(String rhtjyj) {
		this.rhtjyj = rhtjyj;
	}

	public String getRhtjyjnr() {
		return rhtjyjnr;
	}

	public void setRhtjyjnr(String rhtjyjnr) {
		this.rhtjyjnr = rhtjyjnr;
	}

	public String getSmqktk() {
		return smqktk;
	}

	public void setSmqktk(String smqktk) {
		this.smqktk = smqktk;
	}

	public String getSmqktknr() {
		return smqktknr;
	}

	public void setSmqktknr(String smqktknr) {
		this.smqktknr = smqktknr;
	}

	public String getSjzztglx() {
		return sjzztglx;
	}

	public void setSjzztglx(String sjzztglx) {
		this.sjzztglx = sjzztglx;
	}

	public String getSjzztglxnr() {
		return sjzztglxnr;
	}

	public void setSjzztglxnr(String sjzztglxnr) {
		this.sjzztglxnr = sjzztglxnr;
	}

	public String getMtssm() {
		return mtssm;
	}

	public void setMtssm(String mtssm) {
		this.mtssm = mtssm;
	}

	
}
