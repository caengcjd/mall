<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<jsp:useBean id="friend" class="dao.friendlink.FriendlinkDaoImp" />
		<meta http-equiv=content-type content="text/html; charset=UTF-8" />
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script src="../images/index000.js" type="text/javascript"></script>
		<script src="../jquery1.4.js" type="text/javascript"></script>
		<script type="text/javascript">
		function showme(id,v1,v2,v3){
			DialogDiv.style.display="block";
			DialogDiv.style.top="230px";
			var name = document.getElementById("boxBorder");
     		name.value=id
     		var name1 = document.getElementById("titlename1");
     		name1.value=v1;
     		var name2 = document.getElementById("titlename2");
     		name2.value=v2;
     		var name3 = document.getElementById("titlename3");
     		name3.value=v3;
     		BgDiv.style.display="block";
     		BgDiv.style.height="document.height()";
     		/*$("#DialogDiv").css("top","100px");
     		$("#DialogDiv").css("display","block");
     		${"#boxBorder"}.val(id);
     		${"#titlename1"}.val(v1);
     		${"#titlename2"}.val(v2);
     		${"#titlename3"}.val(v3);
     		$("#BgDiv").css({ display:"block",height:$(document).height()});*/
		}
		
		
		function addLink(){
			 addlink.style.display="block";
			 addlink.style.top="230px";
			 BgDiv.style.display="block";
     		 BgDiv.style.height="document.height()";
		}
		
		function closeMe( ){
	 		addlink.style.display="none";
	 		BgDiv.style.display="none";
		}
		
		function closeMe1( ){
	 		DialogDiv.style.display="none";
	 		BgDiv.style.display="none";
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
	filter: alpha(opacity = 50);
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
	background-color:teal;
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

	</head>

	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="../images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.49/mt/index.php" class="link"
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
						<li class="current">
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="../dangqian.do">团购</a>
						</li>
						<li>
							<a href="dangqiantuangou.jsp">订单</a>
						</li>
						<li>
							<a href="userlist.jsp">用户</a>
						</li>
						<li>
							<a href="mtsh.jsp">商户</a>
						</li>
						<li>
							<a href="cityList.jsp">类别</a>
						</li>

					</ul>
				</div>
			</div>





			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li>
									<a href="index.jsp">首页</a><span></span>
								</li>
								<li>
									<a href="tuangoudayi.jsp">团购答疑</a><span></span>
								</li>
								<li class="current">
									<a href="youqinglianjie.jsp">友情链接</a><span></span>
								</li>
								<li>
									<a href="#">财务记录</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											友情链接
										</h2>
										<ul class="filter">
											<li>
												<a href="#" onclick="addLink()">添加链接</a>
											</li>
										</ul>
									</div>

									<div class="sect">
										<table border="0" cellpadding="0" cellspacing="0"
											class="coupons-table" id="orders-list">
											<tr>
												<th width="40" nowrap>
													ID
												</th>
												<th width="120" nowrap>
													网站名称
												</th>
												<th width="200" nowrap>
													网站网址
												</th>
												<th width="80%" nowrap>
													LOGO
												</th>

												<th width="120" colspan="2" nowrap>
													操作
												</th>
											</tr>


											<c:forEach items="${friend.allLink}" var="p">
												<tr class="alt">
													<td>
														${p.id}
													</td>
													<td>
														${p.title}
													</td>
													<td>
														${p.url}
													</td>
													<td>
														${p.logo}
													</td>
													<td align="center">
														<a href="../dellink.do?id=${p.id}" class="remove-record">删除</a>｜
														<a href="#"
															onclick="showme(${p.id},'${p.title}','${p.url}','${p.logo}')">编辑</a>
													</td>
												</tr>
											</c:forEach>



											<tr>
												<td colspan="6">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
												</td>
											</tr>
										</table>
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
						<a href="http://192.168.2.49/mt/feedback/suggest.php">意见反馈</a>
					</p>
					<ul class="cf">
						<li class="col">
							<h3>
								用户帮助
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.49/mt/help/tour.php">玩转美团</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/help/faqs.php">常见问题</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/help/zuitu.php">什么是美团</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/help/api.php">开发API</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								获取更新
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.49/mt/subscribe.php?ename=jinan">邮件订阅</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/feed.php?ename=jinan">RSS订阅</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								合作与联系
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.49/mt/feedback/seller.php">商务合作</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/feedback/suggest.php">意见反馈</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/about/contact.php">联系方式</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/manage/index.php">管理美团</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								公司信息
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.49/mt/about/us.php">关于美团</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/about/job.php">工作机会</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/about/terms.php">用户协议</a>
								</li>
								<li>
									<a href="http://192.168.2.49/mt/about/privacy.php">隐私声明</a>
								</li>
							</ul>
						</li>
						<li class="col end">
							<div class="logo-footer">
								<a href="http://192.168.2.49/mt/"><img
										src="../images/logo-foo.gif" /> </a>
							</div>
						</li>
					</ul>
					<div class="copyright">
						<p>
							&copy;
							<span>2010</span>&nbsp;美团(now6.cn)版权所有&nbsp;
							<a href="http://192.168.2.49/mt/about/terms.php">使用美团前必读</a>&nbsp;
							<a href="http://www.miibeian.gov.cn/" target="_blank"></a>&nbsp;Powered
							by
							<a href="http://tuan.now6.cn/" target="_blank">tuan.now6.cn</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div id="DialogDiv" style="display: none">
			<h2 id="bianji">
				编辑友情链接
				<a href="javascript: closeMe1( )">关闭</a>
			</h2>
			<div class="form">
				<FORM METHOD=post ACTION="../editorfriendlink.do">
					网站名称、网站网址：必填
					<INPUT TYPE="hidden" id="boxBorder" class="boxBorder" NAME="id">
						<br />
						<br />
						网址名称 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
							TYPE="text" id="titlename1" class="boxBorder" NAME="title"
							size=30>
							<br />
							<br />
							网站网址
							:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
								TYPE="text" class="boxBorder" id="titlename2" NAME="url" size=30>
								<br />
								<br />
								LOGO地址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
									TYPE="text" class="boxBorder" id="titlename3" NAME="logo"
									size=30>
									<br />
									<br />
									&nbsp;&nbsp;&nbsp;
									<center>
										<INPUT TYPE="submit" value="提&nbsp;交">
									</center>
				</FORM>
			</div>
		</div>


		<div id="BgDiv"></div>
		<div id="addlink" style="display: none">
			<h2 id="bianji">
				新建友情链接
				<a href="javascript: closeMe( )">关闭</a>
			</h2>
			<div class="form">
				<FORM METHOD=post ACTION="../addfriendlink.do">
					网站名称、网站网址：必填
					<br />
					<br />
					网址名称 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<INPUT TYPE="text" class="boxBorder" NAME="title" size=30>
						<br />
						<br />
						网站网址 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
							TYPE="text" class="boxBorder" NAME="url" size=30>
							<br />
							<br />
							LOGO地址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
								TYPE="text" class="boxBorder" NAME="logo" size=30>
								<br />
								<br />
								&nbsp;&nbsp;&nbsp;
								<center>
									<INPUT TYPE="submit" value="提&nbsp;交">
								</center>
				</FORM>
			</div>
		</div>
	</body>
</html>
