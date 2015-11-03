<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>

		<meta http-equiv=content-type content="text/html; charset=UTF-8" />
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="../img/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mtw';</script>
		<script src="../js/index000.js" type="text/javascript"></script>
		<script src="../jquery1.4.js" type="text/javascript"></script>
		<script type="text/javascript">
			function showme(id){
					$("#DialogDiv").css("top","230px");
     				$("#DialogDiv").css("display","block");
     				$("#BgDiv").css("display","block");
     				$("#BgDiv").css("height","document.height()");
     				var name = document.getElementById("boxBorder");
     				name.value=id
			}
		
		$(document).ready(function(){
  		 
  		 $("#btnClose").click(function(){$("#DialogDiv").css("display","none"); $("#BgDiv").css("display","none");});
  		 $("#btnClosed").click(function(){$("#addlink").css("display","none");$("#BgDiv").css("display","none");});
		});
		
		function addLink(){
			$("#addlink").css("top","230px");
     		$("#addlink").css("display","block");
     		$("#BgDiv").css("display","block");
     		$("#BgDiv").css("height","document.height()");
			
		}
		
		</script>
		<style type="text/css">
.boxBorder {
	border: 1px solid green;
}

body,h2 {
	margin: 0;
	padding: 0;
}

#BgDiv {
	background-color: #e3e3e3;
	position: absolute;
	z-index: 99;
	left: 0;
	top: 0;
	display: none;
	width: 100%;
	height: 1000px;
	opacity: 0.5;
	filter: alpha(opacity =     50);
	-moz-opacity: 0.5;
}

#DialogDiv {
	position: absolute;
	width: 400px;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	height: auto;
	z-index: 100;
	background-color: #fff;
	border: 1px #8FA4F5 solid;
	padding: 1px;
}

#DialogDiv h2 {
	height: 25px;
	font-size: 14px;
	background-color: teal;
	position: relative;
	padding-left: 10px;
	line-height: 25px;
	color: white;
}

#DialogDiv h2 a {
	position: absolute;
	right: 5px;
	font-size: 12px;
	color: white;
}

#DialogDiv .form {
	padding: 10px;
}

#addlink {
	position: absolute;
	width: 400px;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	height: auto;
	z-index: 100;
	background-color: #fff;
	border: 1px #8FA4F5 solid;
	padding: 1px;
}

#addlink h2 {
	height: 25px;
	font-size: 14px;
	background-color: teal;
	position: relative;
	padding-left: 10px;
	line-height: 25px;
	color: white;
}

#addlink h2 a {
	position: absolute;
	right: 5px;
	font-size: 12px;
	color: white;
}

#addlink .form {
	padding: 10px;
}
</style>
		<style>
#placeLayer {
	position: absolute;
	left: 280px;
	top: 120px;
	width: 450px;
	height: 154px;
	z-index: 2;
	background-color: #FFFFFF;
	background-image: url(images/layerBack.jpg);
	display: none
}
</style>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="../images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://localhost/mtw/index.php" class="link"
							target="_blank"><img src="../images/logo0000.gif" /> </a>
					</div>
					<div class="guides">
						<div class="city">
							<h2>
								管理后台
							</h2>
						</div>
						<div id="guides-city-change" class="change"></div>
					</div>
					<ul class="nav cf">
						<li>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="../dangqian.do">团购</a>
						</li>
						<li>
							<a href="danqiandingdan.jsp">订单</a>
						</li>
						<li>
							<a href="userlist.jsp">用户</a>
						</li>
						<li>
							<a href="mtsh.jsp">商户</a>
						</li>
						<li class="current">
							<a href="cityList.jsp">类别</a>
						</li>	</ul>
				</div>
			</div>
			
			
			<div id="DialogDiv" style="display: none">
			<h2 id="bianji">
				编辑城市列表：
				<a href="#" id="btnClose">关闭</a>
			</h2>
			<div class="form">
				<FORM METHOD=post ACTION="../bianjict.do">
					中文名称：必填
					<br/>
						<INPUT TYPE="hidden" id="boxBorder" class="boxBorder" NAME="cityID">
					<br/>
					中 文 名 称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="chinesscity" size="30">
					<br/>
					<br/>
					英 文 名 称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="eginashcity" size="30">
					<br/>
					<br/>
					首&nbsp;&nbsp;&nbsp;字&nbsp;&nbsp;&nbsp;母 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="eginash" size="30">
					<br/>
					<br/>
					自定义分组 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="fenzhu" size="30">
					<br/>
					<br/>
					排&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;序 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="paixu" size="30">
					<br/>
					<br/>
					<INPUT TYPE="submit" value="提&nbsp;交">
				</FORM>
			</div>
		</div>
			
			
			<div id="BgDiv"></div>
			<div id="addlink" style="display: none">
			<h2 id="xinjian">
				新建城市列表:
				<a href="#" id="btnClosed">关闭</a>
			</h2>
			<div class="form">
				<FORM METHOD=post ACTION="../xinjian.do">
					中文名称：必填
					<br/>
					<br/>
					中 文 名 称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="chinesscity" size="30">
					<br/>
					<br/>
					英 文 名 称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="eginashcity" size="30">
					<br/>
					<br/>
					首&nbsp;&nbsp;&nbsp;字&nbsp;&nbsp;&nbsp;母 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="eginash" size="30"/>
					<br/>
					<br/>
					自定义分组 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="fenzhu" size="30">
					<br/>
					<br/>
					排&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;序 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" class="boxBorder" NAME="paixu" size="30">
					<br/>
					<br/>
					<center><INPUT TYPE="submit" value="提&nbsp;交"></center>
				</FORM>
			</div>
		</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li class="current">
									<a href="cityList.do">城市列表</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											城市列表
										</h2>
										<ul class="filter">
											<li>
												<A class=ajaxlink onclick="addLink()">新建城市列表</A>
											</li>
										</ul>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													&nbsp;ID
												</th>
												<th width="90">
													&nbsp;中文名称
												</th>
												<th width="90">
													&nbsp;英文名称
												</th>
												<th width="80">
													&nbsp;首字母
												</th>
												<th width="100">
													自定义分组
												</th>
												<th width="60">
													&nbsp;排序
												</th>
												<th width="150">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作
												</th>
											</tr>
											<jsp:useBean id="city" class="dao.city.CityDaoImp" />
											<c:forEach items="${city.allLinker}" var="cs">
												<tr class="alt">
													<td>
														${cs.cityID }
													</td>
													<td>
														${cs.chinesscity }
													</td>
													<td>
														${cs.eginashcity }
													</td>
													<td>
														${cs.eginash }
													</td>
													<td> 
														${cs.fenzhu }
													</td>
													<td>
														${cs.paixu }
													</td>
													<td>
														<a ONCLICK="showme(${cs.cityID})">编辑</a>｜
														<a href="../delcity.do?cityID=${cs.cityID}"  class="remove-record">删除</a>
													</td>
												</tr>
											</c:forEach>
										</table>
										<center>

										</center>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- bd end -->
			</div>
			<!-- bdw end -->

			<div id="ftw">
				<div id="ft">
					<p class="contact">
						<a href="http://localhost/mtw/feedback/suggest.php">意见反馈</a>
					</p>
					<ul class="cf">
						<li class="col">
							<h3>
								用户帮助
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://localhost/mtw/help/tour.php">玩转美团</a>
								</li>
								<li>
									<a href="http://localhost/mtw/help/faqs.php">常见问题</a>
								</li>
								<li>
									<a href="http://localhost/mtw/help/zuitu.php">什么是美团</a>
								</li>
								<li>
									<a href="http://localhost/mtw/help/api.php">开发API</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								获取更新
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://localhost/mtw/subscribe.php?ename=jinan">邮件订阅</a>
								</li>
								<li>
									<a href="http://localhost/mtw/feed.php?ename=jinan">RSS订阅</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								合作与联系
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://localhost/mtw/feedback/seller.php">商务合作</a>
								</li>
								<li>
									<a href="http://localhost/mtw/feedback/suggest.php">意见反馈</a>
								</li>
								<li>
									<a href="http://localhost/mtw/about/contact.php">联系方式</a>
								</li>
								<li>
									<a href="http://localhost/mtw/manage/index.php">管理美团</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								公司信息
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://localhost/mtw/about/us.php">关于美团</a>
								</li>
								<li>
									<a href="http://localhost/mtw/about/job.php">工作机会</a>
								</li>
								<li>
									<a href="http://localhost/mtw/about/terms.php">用户协议</a>
								</li>
								<li>
									<a href="http://localhost/mtw/about/privacy.php">隐私声明</a>
								</li>
							</ul>
						</li>
						<li class="col end">
							<div class="logo-footer">
								<a href="http://localhost/mtw/"><images
										src="../images/logo-foo.gif" /> </a>
							</div>
						</li>
					</ul>
					<div class="copyright">
						<p>
							&copy;
							<span>2010</span>&nbsp;美团(now6.cn)版权所有&nbsp;
							<a href="http://localhost/mtw/about/terms.php"> 使用美团前必读</a>&nbsp;
							<a href="http://www.miibeian.gov.cn/" target="_blank"></a>&nbsp;Powered
							by
							<a href="http://tuan.now6.cn/" target="_blank">tuan.now6.cn</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		
	</body>
</html>