USE master
IF EXISTS (SELECT *FROM sysdatabases WHERE NAME='Item')
DROP DATABASE Item
CREATE DATABASE Item
ON(
NAME ='Item',
FILENAME ='D:\temp\Item.mdf',
SIZE =5MB
)
GO
USE Item



--友情链接表
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='Friendlink')
DROP TABLE Friendlink
CREATE TABLE Friendlink
(
lid int  primary  key auto_increment,
ltitle varchar(50),
lurl varchar(100),
logo varchar(100)
)
INSERT INTO Friendlink(ltitle,lurl,logo) VALUES ('hao123','http://tuan.hao123.com','http://tg/logo.gif');
INSERT INTO Friendlink(ltitle,lurl,logo) VALUES ('baidu','http://tuan.hao123.com','http://tg/logo.gif');
INSERT INTO Friendlink(ltitle,lurl,logo) VALUES ('google','http://tuan.hao123.com','http://tg/logo.gif');


--团购答疑表
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='mt_question')
DROP TABLE mt_question
CREATE TABLE mt_question
(
mid int  primary  key  auto_increment,
mtitle varchar(100),
minfo varchar(500),
mname varchar(100),
manswer varchar(100),
create_time varchar(100)

)


--用户表
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='Mt_User')
DROP TABLE Mt_User
CREATE TABLE Mt_User
(
uid int  primary  key auto_increment,
username Varchar(100)  not null,
upassword Varchar(100) not null,
city Varchar(100) not null,
email varchar(100) not null,
mobile	Varchar (100),
umoney decimal(30,2) default 0.00,
administer char(1) default 'n', 
zhucetime datetime
);

insert into Mt_User(username,upassword,city,email,mobile,umoney,administer,zhucetime) values('admin','202cb962ac59075b964b07152d234b70','长沙','726234765@qq.com','12345678910',1,'y','2011-05-01 09:28:18.250');


--我的团购表
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='Fellowship')
DROP TABLE Fellowship
CREATE TABLE Fellowship
(
fid int primary_key auto_increment,
city varchar(50)  NOT NULL,				#--城市
category varchar(50) NOT NULL,			#--类别
title varchar(1000) NOT NULL,			#--团购标题
scprice varchar(50) NOT NULL,			#--市场价
tgprice varchar(50) NOT NULL,			#--团购价
smallnum int  NOT NULL,					#--最低数量
bignum int NOT NULL,					#--最大数量
begintime  varchar(50), 				#--开始时间
endtime  varchar(50),  					#--结束时间
closetime varchar(50),   				#--结束时间
introduce varchar(500), 				#--本团简介
cue varchar(500),						#--特别提示
businessman  varchar(50), 				#--商户
spname varchar(100),  					#--商品名称
spimg1 varchar(100),					#--商品图片1
spimg2 varchar(100), 					#--商品图片2
spimg3 varchar(100), 					#--商品图片3
orderform  varchar(500), 				#--订单详情
);
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('changsha','休闲娱乐','Apple iPad2(16G/Wifi)','4600','3680',1,2,'2011-04-20','2011-05-21','2011-05-21','本团介绍','特别提示','一度公司','sdf','src','ipad2.jpg','src','上市时间:2011年 操作系统:iOS 4.3 处理器: Apple A5(1GHz),双核处理器主频:1GHz RAM容量:512MB ROM容量:16GB多点触摸,LED屏,IPS屏,镜面,电容屏,Facetime功能,加速度感应,环境光传感,带有三轴陀螺仪');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('changsha','休闲娱乐','Apple iPhone 4（16GB）','5080','4826',1,2,'2011-04-20','2011-05-21','2011-05-21','本团介绍','特别提示','一度公司','sdf','src','iphone.gif','src','屏幕采用Retina显示技术；Multi-Touch 触控宽屏幕 ，正反面采用防油渍防指纹外膜，支持多种语言文字同时显示双麦克风设计，有助于降噪；机身周边的固定框被设计为了iPhone4的天线');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('jinan','休闲娱乐','仅售20元！原价40元的锡林羔羊火锅城（文艺路口店）现金抵用券1张，每桌赠鲜橙多/老青岛啤酒2支2选1。感受来自锡林郭勒大草原的美味，让塞外风情征服你的胃！','40','20',1,2,'2011-04-20','2011-05-2','2011-05-21','本团介绍','特别提示','一度公司','sdf','src','food.jpg','src','锡林羔羊火锅城所用羊肉均来自内蒙古锡林郭勒草原，锡林郭勒草原位于内蒙古自治区中部，是内蒙古高原的一部分，属于大陆性中温带半干旱季风气候海拔高，日照时间长、昼夜温差大，有利于动植物的生长和发育；是世界四大天然生态草原之一，中国唯一被纳入国际生态圈的、纯天然、无污染的草原自然保护区。');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('jinan','休闲娱乐','仅售30元！原价50元的皇冠时尚花艺母亲节花束1束（康乃馨9朵+百合），母亲节就要到了，让我们用一束束美丽的鲜花向妈妈表达自己的感恩之情吧','50','30',1,2,'2011-04-20','2011-05-2','2011-05-21','本团介绍','特别提示','一度公司','sdf','src','flower.jpg','src','康乃馨，又名狮头石竹、麝香石竹、大花石竹、荷兰石竹，为石竹科、石竹属植物，分布于欧洲温带以及中国大陆的福建、湖北等地，原产于地中海地区，是目前世界上应用最普遍的花卉之一。康乃馨包括许多变种与杂交种，在温室里几乎可以连续不断开花。1907年起，开始以粉红色康乃馨作为母亲节的象征，故今常被作为献给母亲的花。');


//我的团购表
CREATE TABLE Fellowship
(
fid int primary key auto_increment,
city varchar(50)  NOT NULL,				 
category varchar(50) NOT NULL,			 
title varchar(100) NOT NULL,			 
scprice varchar(50) NOT NULL,			 
tgprice varchar(50) NOT NULL,			 
smallnum int  NOT NULL,					 
bignum int NOT NULL,					 
begintime  varchar(50), 				 
endtime  varchar(50),  					 
closetime varchar(50),   				 
introduce varchar(500), 				 
cue varchar(500),						 
businessman  varchar(50), 				 
spname varchar(100),  					 
spimg1 varchar(100),					 
spimg2 varchar(100), 					 
spimg3 varchar(100), 					 
orderform  varchar(500)				 
);

--讨论区
if exists (select *from sysobjects where name='talkwith')
drop table talkwith
create table talkwith
(
tid int primary key auto_increment,
stopic varchar(20),
tuser varchar(20),
saddress varchar(20),
stime varchar(20),
sinfo varchar(20)
);
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('美团','申建勋','j','2010-04-28 10:57:47','全');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('美团','颜敏','j','2010-04-28 10:57:47','购');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('美团','黄林','g','2010-04-28 10:57:47','球');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('妹纸','易骁','g','2010-04-28 10:57:47','物');

if exists (select *from sysobjects where name='huifu')
drop table huifu
create table huifu
(
hid int identity(1,1),
hfid int,
huser varchar(20),
hinfo varchar(50),
htime varchar(20) 
)



--我的订单
if exists (select *from sysobjects where name='mydingdan')
drop table mydingdan
create table mydingdan
(
mid int primary  key  auto_increment,
mtopic varchar(500),
muser varchar(50),
mnumber int,
tmoney varchar(50),
Status varchar(50) default '未付款',
xddtime datetime
);

--商户表
if exists (select * from sysobjects where name='trader')
drop table trader
create table trader
(
id int primary key  auto_increment not null,	  	  	 
name varchar (20),		   	         
password varchar(10),			        
customerName varchar(30),                	 
interAdress varchar(30),			 
people varchar(15),				 
khBank varchar(30),				 
khName varchar(30),				 
bankzf varchar(30),				 
weizhiinfo varchar(50),
qitainfo varchar(50),
time datetime
);

insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('小李','123','美团网','www.meituan.com','15123654789','中国银行','小李','2222222222222222','美团','团购',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('小王','a123','淘宝网','www.taobao.com','12345678912','农业银行','小王','333333333333333','jkdsjfk','网购',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('小刘','123','优酷','www.youku.com','12345678912','中信银行','小刘','44444444444444444','jkdsjfk','看视屏',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('张三','123','阿里巴巴','www.alibaba.com','12345678912','邮政银行','张三','55555555555555555','jkdsjfk','买东西',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('中国','123','中华人民共和国','www.qweqw.com','12345678912','工商银行','小谢','666666666666666666','中国','国家',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('一度','123','一度教育','www.yidu.com','13112345678','长沙银行','小张','11111111111111111','湖南、长沙','java',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('魅族','123','魅族科技','www.meizu.com','15088027278','广东发展银行','黄章','77777777777777777','广东省、珠海市','智能国产手机',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('qq','123','腾讯qq','www.qq.com','13833166545','广东发展银行','马化腾','77777777777777777','广东省、深圳市','聊天软件',now());


--商户表
if exists (select * from sysobjects where name='trader')
drop table trader
create table trader
(
id int   primary  key  auto_increment not null,	  	  	-- 商户列表id
name varchar (20),		   	        -- 用户名称
password varchar(10),			        -- 用户密码
customerName varchar(30),                	--（商户名称）
interAdress varchar(30),			--网站地址
people varchar(15),				--联系电话
khBank varchar(30),				--开户银行
khName varchar(30),				--开户名
bankzf varchar(30),				--银行账户
weizhiinfo varchar(50),
qitainfo varchar(50),
time datetime
)


--玩转美团
if exists(select * from sysobjects where name='wzmt')
drop table wzmt
create table wzmt
(
mid  int primary  key  auto_increment not null,	  
fenxiang varchar(300),
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

);

create table wzmt
(
 
fenxiang,
xiaofei  ,
pingjia  ,

mtssh  ,		
mtsshnr ,


jttgbuzemgm  ,	
jttgbuzemgmnr  ,


rhfk ,		
rhfknr  ,


tgrsbz  ,		
tgrsbznr  ,


shsmtj  ,		
shsmtjnr  ,


symtjyh  ,		
symtjyhnr  ,


mymtj  ,
mymtjnr  ,


jfsmh  ,
jfsmhnr  ,


wshdyj  ,
wshdyjnr  ,

rhtjyj  ,
rhtjyjnr  ,


smqktk  ,
smqktknr  ,


sjzztglx  ,
sjzztglxnr  ,

mtssm  

);



insert into wzmt(
 
fenxiang,
xiaofei  ,
pingjia  ,

mtssh  ,		
mtsshnr ,


jttgbuzemgm  ,	
jttgbuzemgmnr  ,


rhfk ,		
rhfknr  ,


tgrsbz  ,		
tgrsbznr  ,


shsmtj  ,		
shsmtjnr  ,


symtjyh  ,		
symtjyhnr  ,


mymtj  ,
mymtjnr  ,


jfsmh  ,
jfsmhnr  ,


wshdyj  ,
wshdyjnr  ,

rhtjyj  ,
rhtjyjnr  ,


smqktk  ,
smqktknr  ,


sjzztglx  ,
sjzztglxnr  ,

mtssm  

) values('邀请好友首次购买，立获10元返利，不设上限！','凭美团券即可到店享受超值服务啦！','消费后别忘了评价哦，有积分奖励的～',
'美团网是什么？',
'美团网每天提供一单精品消费，为您精选餐厅、酒吧、KTV、SPA、美发店、瑜伽馆等特色商家，只要凑够最低团购人数就能享受无敌折扣。详情请看美团是什么。',

'今天的团购看起来不错，怎么购买？',
'只需在团购截止时间之前点击"购买"按钮，根据提示下订单付费购买即可。如果参加团购人数达到最低人数下限，则团购成交，您将得到我们的短信或邮件通知。',

'如何付款，安全么？',
'美团网使用支付宝、财付通等主流第三方支付方式，确保交易安全： 推荐淘宝用户使用 无需注册，支持国内各大银行支付',

'如果参加团购人数不足，怎么办？',
'如果参加团购人数不足，则该次团购取消。已支付的款项，美团网将立即返还。您不会有任何损失，但失去了以超低折扣价享受精品消费的机会。如果您很希望这次团购成交，邀请您的朋友一起来购买吧~ ',

'什么是美团券，怎么使用？',
'美团券是当团购成功后，您以手机短信方式获取，或者自行下载打印使用的消费凭证（其中包含唯一优惠密码）。当您去消费时，出示该短信或者打印的美团券即可。',

'使用美团券时，能同时享用其他优惠么？',
'一般不可以。如果可以，我们会在团购提示里特别说明。',

'我购买的美团券，可以给其他人使用么？',
'当然可以！我们自己也会购买美团券送给朋友，给他/她一个惊喜 :) ',

'积分有什么用？怎样获得积分？',
'通过短信或在网站上对消费过的订单进行评价，即可获赠与每次现金消费金额相等的积分（不含用返利、代金券支付的部分）。美团网将推出积分换购等活动，敬请期待！',

'我收不到美团的邮件，怎么办？',
'请把 info@meituan.com 加入到您.的邮件白名单中。',

'如何添加？ 如何退订美团发给我的每日团购邮件?',
'如不想继续接收美团每日推荐邮件，点击邮件上方的“取消订阅”即可！ 短信订阅了每日团购信息，怎样退订？ 收到订阅短信后，回复“QX” 可取消订阅，仅需支付由运营商收取的标准短信费。',

'什么情况下可以退款？',
'您好，以下情况可以退款： 1. 团购结束时没有凑够团购人数； 2. 团购成功后，商家因意外原因临时出现停业或搬家的情况。（我们会在第一时间将您当时支付的款项退还给您） 3. 团购成功后，7天内未消费，无条件退款。 4. 美团券过期后，您可以在“已过期美团券”页一键退款',

'我是商家，想在美团网组织团购，怎么联系？',
'欢迎可提供高品质服务或产品的优质商家、网上商城等成为美团网特约合作伙伴，如您有意，请提交团购信息',
'美团是什么'
)




--城市列表
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='City')
DROP TABLE City
CREATE TABLE City
(
CityID int primary  key  auto_increment ,       
chinesscity varchar(50),       
eginashcity varchar(50),        
eginash varchar(50),          
fenzhu varchar(50),         
paixu varchar(50)            
);


insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('长沙' , 'changsha' ,'c' , '1' ,'0' );
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('济南' , 'jinan' ,'j' , '1' ,'0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) Values('北京' , 'beijin' , 'b' , '1' , '0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('上海' , 'shanghai' , 's' , '1' , '0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('深圳' , 'shenzhen' , 's' , '1' , '0');




