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



--�������ӱ�
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


--�Ź����ɱ�
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


--�û���
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

insert into Mt_User(username,upassword,city,email,mobile,umoney,administer,zhucetime) values('admin','202cb962ac59075b964b07152d234b70','��ɳ','726234765@qq.com','12345678910',1,'y','2011-05-01 09:28:18.250');


--�ҵ��Ź���
IF EXISTS (SELECT *FROM sysobjects WHERE NAME='Fellowship')
DROP TABLE Fellowship
CREATE TABLE Fellowship
(
fid int primary_key auto_increment,
city varchar(50)  NOT NULL,				#--����
category varchar(50) NOT NULL,			#--���
title varchar(1000) NOT NULL,			#--�Ź�����
scprice varchar(50) NOT NULL,			#--�г���
tgprice varchar(50) NOT NULL,			#--�Ź���
smallnum int  NOT NULL,					#--�������
bignum int NOT NULL,					#--�������
begintime  varchar(50), 				#--��ʼʱ��
endtime  varchar(50),  					#--����ʱ��
closetime varchar(50),   				#--����ʱ��
introduce varchar(500), 				#--���ż��
cue varchar(500),						#--�ر���ʾ
businessman  varchar(50), 				#--�̻�
spname varchar(100),  					#--��Ʒ����
spimg1 varchar(100),					#--��ƷͼƬ1
spimg2 varchar(100), 					#--��ƷͼƬ2
spimg3 varchar(100), 					#--��ƷͼƬ3
orderform  varchar(500), 				#--��������
);
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('changsha','��������','Apple iPad2(16G/Wifi)','4600','3680',1,2,'2011-04-20','2011-05-21','2011-05-21','���Ž���','�ر���ʾ','һ�ȹ�˾','sdf','src','ipad2.jpg','src','����ʱ��:2011�� ����ϵͳ:iOS 4.3 ������: Apple A5(1GHz),˫�˴�������Ƶ:1GHz RAM����:512MB ROM����:16GB��㴥��,LED��,IPS��,����,������,Facetime����,���ٶȸ�Ӧ,�����⴫��,��������������');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('changsha','��������','Apple iPhone 4��16GB��','5080','4826',1,2,'2011-04-20','2011-05-21','2011-05-21','���Ž���','�ر���ʾ','һ�ȹ�˾','sdf','src','iphone.gif','src','��Ļ����Retina��ʾ������Multi-Touch ���ؿ���Ļ ����������÷����շ�ָ����Ĥ��֧�ֶ�����������ͬʱ��ʾ˫��˷���ƣ������ڽ��룻�����ܱߵĹ̶������Ϊ��iPhone4������');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('jinan','��������','����20Ԫ��ԭ��40Ԫ�����ָ������ǣ�����·�ڵ꣩�ֽ����ȯ1�ţ�ÿ�����ʳȶ�/���ൺơ��2֧2ѡ1�������������ֹ��մ��ԭ����ζ������������������θ��','40','20',1,2,'2011-04-20','2011-05-2','2011-05-21','���Ž���','�ر���ʾ','һ�ȹ�˾','sdf','src','food.jpg','src','���ָ�����������������������ɹ����ֹ��ղ�ԭ�����ֹ��ղ�ԭλ�����ɹ��������в��������ɹŸ�ԭ��һ���֣����ڴ�½�����´���ɺ��������򺣰θߣ�����ʱ�䳤����ҹ�²�������ڶ�ֲ��������ͷ������������Ĵ���Ȼ��̬��ԭ֮һ���й�Ψһ�����������̬Ȧ�ġ�����Ȼ������Ⱦ�Ĳ�ԭ��Ȼ��������');
INSERT INTO Fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,
cue,businessman,spname,spimg1,spimg2,spimg3,orderform) VALUES ('jinan','��������','����30Ԫ��ԭ��50Ԫ�Ļʹ�ʱ�л���ĸ�׽ڻ���1��������ܰ9��+�ٺϣ���ĸ�׽ھ�Ҫ���ˣ���������һ�����������ʻ����������Լ��ĸж�֮���','50','30',1,2,'2011-04-20','2011-05-2','2011-05-21','���Ž���','�ر���ʾ','һ�ȹ�˾','sdf','src','flower.jpg','src','����ܰ������ʨͷʯ������ʯ�񡢴�ʯ�񡢺���ʯ��Ϊʯ��ơ�ʯ����ֲ��ֲ���ŷ���´��Լ��й���½�ĸ����������ȵأ�ԭ���ڵ��к���������Ŀǰ������Ӧ�����ձ�Ļ���֮һ������ܰ�������������ӽ��֣��������Ｘ�������������Ͽ�����1907���𣬿�ʼ�Էۺ�ɫ����ܰ��Ϊĸ�׽ڵ��������ʽ񳣱���Ϊ�׸�ĸ�׵Ļ���');


//�ҵ��Ź���
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

--������
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
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('����','�꽨ѫ','j','2010-04-28 10:57:47','ȫ');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('����','����','j','2010-04-28 10:57:47','��');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('����','����','g','2010-04-28 10:57:47','��');
insert into talkwith(stopic,tuser,saddress,stime,sinfo) values ('��ֽ','����','g','2010-04-28 10:57:47','��');

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



--�ҵĶ���
if exists (select *from sysobjects where name='mydingdan')
drop table mydingdan
create table mydingdan
(
mid int primary  key  auto_increment,
mtopic varchar(500),
muser varchar(50),
mnumber int,
tmoney varchar(50),
Status varchar(50) default 'δ����',
xddtime datetime
);

--�̻���
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

insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('С��','123','������','www.meituan.com','15123654789','�й�����','С��','2222222222222222','����','�Ź�',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('С��','a123','�Ա���','www.taobao.com','12345678912','ũҵ����','С��','333333333333333','jkdsjfk','����',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('С��','123','�ſ�','www.youku.com','12345678912','��������','С��','44444444444444444','jkdsjfk','������',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('����','123','����Ͱ�','www.alibaba.com','12345678912','��������','����','55555555555555555','jkdsjfk','����',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('�й�','123','�л����񹲺͹�','www.qweqw.com','12345678912','��������','Сл','666666666666666666','�й�','����',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('һ��','123','һ�Ƚ���','www.yidu.com','13112345678','��ɳ����','С��','11111111111111111','���ϡ���ɳ','java',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('����','123','����Ƽ�','www.meizu.com','15088027278','�㶫��չ����','����','77777777777777777','�㶫ʡ���麣��','���ܹ����ֻ�',now());
insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,weizhiinfo,qitainfo,time) values('qq','123','��Ѷqq','www.qq.com','13833166545','�㶫��չ����','����','77777777777777777','�㶫ʡ��������','�������',now());


--�̻���
if exists (select * from sysobjects where name='trader')
drop table trader
create table trader
(
id int   primary  key  auto_increment not null,	  	  	-- �̻��б�id
name varchar (20),		   	        -- �û�����
password varchar(10),			        -- �û�����
customerName varchar(30),                	--���̻����ƣ�
interAdress varchar(30),			--��վ��ַ
people varchar(15),				--��ϵ�绰
khBank varchar(30),				--��������
khName varchar(30),				--������
bankzf varchar(30),				--�����˻�
weizhiinfo varchar(50),
qitainfo varchar(50),
time datetime
)


--��ת����
if exists(select * from sysobjects where name='wzmt')
drop table wzmt
create table wzmt
(
mid  int primary  key  auto_increment not null,	  
fenxiang varchar(300),
xiaofei varchar(300),
pingjia varchar(300),
--��������ʲô��
mtssh varchar(50),		
mtsshnr varchar(300),

--������Ź�������������ô����
jttgbuzemgm varchar(50),	
jttgbuzemgmnr varchar(300),

--��θ����ȫô��
rhfk varchar(50),		
rhfknr varchar(300),

--����μ��Ź��������㣬��ô�죿
tgrsbz varchar(50),		
tgrsbznr varchar(300),

--ʲô������ȯ����ôʹ�ã�
shsmtj varchar(50),		
shsmtjnr varchar(300),

--ʹ������ȯʱ����ͬʱ���������Ż�ô��
symtjyh varchar(50),		
symtjyhnr varchar(300),

--�ҹ��������ȯ�����Ը�������ʹ��ô��
mymtj varchar(50),
mymtjnr varchar(300),

--������ʲô�ã�������û��֣�
jfsmh varchar(50),
jfsmhnr varchar(300),

--���ղ������ŵ��ʼ�����ô�죿
wshdyj varchar(50),
wshdyjnr varchar(300),

--�����ӣ� ����˶����ŷ����ҵ�ÿ���Ź��ʼ���
rhtjyj varchar(50),
rhtjyjnr varchar(300),

--ʲô����¿����˿
smqktk varchar(50),
smqktknr varchar(300),

--�����̼ң�������������֯�Ź�����ô��ϵ�� 
sjzztglx varchar(50),
sjzztglxnr varchar(300),
--û����ʲô
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

) values('��������״ι�������10Ԫ�������������ޣ�','ƾ����ȯ���ɵ������ܳ�ֵ��������','���Ѻ����������Ŷ���л��ֽ����ġ�',
'��������ʲô��',
'������ÿ���ṩһ����Ʒ���ѣ�Ϊ����ѡ�������ưɡ�KTV��SPA�������ꡢ�٤�ݵ���ɫ�̼ң�ֻҪ�չ�����Ź��������������޵��ۿۡ������뿴������ʲô��',

'������Ź�������������ô����',
'ֻ�����Ź���ֹʱ��֮ǰ���"����"��ť��������ʾ�¶������ѹ��򼴿ɡ�����μ��Ź������ﵽ����������ޣ����Ź��ɽ��������õ����ǵĶ��Ż��ʼ�֪ͨ��',

'��θ����ȫô��',
'������ʹ��֧�������Ƹ�ͨ������������֧����ʽ��ȷ�����װ�ȫ�� �Ƽ��Ա��û�ʹ�� ����ע�ᣬ֧�ֹ��ڸ�������֧��',

'����μ��Ź��������㣬��ô�죿',
'����μ��Ź��������㣬��ô��Ź�ȡ������֧���Ŀ�����������������������������κ���ʧ����ʧȥ���Գ����ۿۼ����ܾ�Ʒ���ѵĻ��ᡣ�������ϣ������Ź��ɽ���������������һ���������~ ',

'ʲô������ȯ����ôʹ�ã�',
'����ȯ�ǵ��Ź��ɹ��������ֻ����ŷ�ʽ��ȡ�������������ش�ӡʹ�õ�����ƾ֤�����а���Ψһ�Ż����룩������ȥ����ʱ����ʾ�ö��Ż��ߴ�ӡ������ȯ���ɡ�',

'ʹ������ȯʱ����ͬʱ���������Ż�ô��',
'һ�㲻���ԡ�������ԣ����ǻ����Ź���ʾ���ر�˵����',

'�ҹ��������ȯ�����Ը�������ʹ��ô��',
'��Ȼ���ԣ������Լ�Ҳ�Ṻ������ȯ�͸����ѣ�����/��һ����ϲ :) ',

'������ʲô�ã�������û��֣�',
'ͨ�����Ż�����վ�϶����ѹ��Ķ����������ۣ����ɻ�����ÿ���ֽ����ѽ����ȵĻ��֣������÷���������ȯ֧���Ĳ��֣������������Ƴ����ֻ����Ȼ�������ڴ���',

'���ղ������ŵ��ʼ�����ô�죿',
'��� info@meituan.com ���뵽��.���ʼ��������С�',

'�����ӣ� ����˶����ŷ����ҵ�ÿ���Ź��ʼ�?',
'�粻�������������ÿ���Ƽ��ʼ�������ʼ��Ϸ��ġ�ȡ�����ġ����ɣ� ���Ŷ�����ÿ���Ź���Ϣ�������˶��� �յ����Ķ��ź󣬻ظ���QX�� ��ȡ�����ģ�����֧������Ӫ����ȡ�ı�׼���ŷѡ�',

'ʲô����¿����˿',
'���ã�������������˿ 1. �Ź�����ʱû�дչ��Ź������� 2. �Ź��ɹ����̼�������ԭ����ʱ����ͣҵ���ҵ�����������ǻ��ڵ�һʱ�佫����ʱ֧���Ŀ����˻������� 3. �Ź��ɹ���7����δ���ѣ��������˿ 4. ����ȯ���ں��������ڡ��ѹ�������ȯ��ҳһ���˿�',

'�����̼ң�������������֯�Ź�����ô��ϵ��',
'��ӭ���ṩ��Ʒ�ʷ�����Ʒ�������̼ҡ������̳ǵȳ�Ϊ��������Լ������飬�������⣬���ύ�Ź���Ϣ',
'������ʲô'
)




--�����б�
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


insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('��ɳ' , 'changsha' ,'c' , '1' ,'0' );
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('����' , 'jinan' ,'j' , '1' ,'0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) Values('����' , 'beijin' , 'b' , '1' , '0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('�Ϻ�' , 'shanghai' , 's' , '1' , '0');
insert into City(chinesscity,eginashcity,eginash,fenzhu,paixu) values('����' , 'shenzhen' , 's' , '1' , '0');




