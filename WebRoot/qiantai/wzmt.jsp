<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
		<jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<jsp:useBean id="q" class="dao.wzmt.Wzmtdao" />
		<jsp:useBean id="creat" class="dao.tuangou.NewCreateImp" />
		 <jsp:useBean id="todaytuangou" class="dao.tuangou.NewCreateImp" />
		 <%  dao.tuangou.NewCreateImp  tuangou=new  dao.tuangou.NewCreateImp();List  list=tuangou.getTuanGou(); 
		  request.setAttribute("tuangou",list); %> 
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团 - 精品团购每一天|长沙购物|长沙团购|长沙打折</title>
		<meta name="description" content="精品团购每一天|长沙购物|长沙团购|长沙打折" />
		<meta name="keywords"
			content="美团, 长沙, 长沙美团，长沙购物，长沙团购，长沙打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 0;</script>
		<script src="../images/index000.js" type="text/javascript"></script>

		<SCRIPT LANGUAGE="JavaScript">
      
	  function show(p){
	   var c1=document.getElementById("mydiv");
	   var c2=document.getElementById("mydiv1");
	   var c3=document.getElementById("mydiv2");
	  if(p==1){
	  c1.style.display="block";
	  c2.style.display="none";
	  c3.style.display="none";
	  }else if (p==2){
	  c2.style.display="block";
	  c1.style.display="none";
	  c3.style.display="none";
	  }else if(p==3){
	  c3.style.display="block";
	  c1.style.display="none";
	  c2.style.display="none";
	  }
	  }
  </SCRIPT>

		<script type="text/javascript">	
		function selectPlace(txt)
		{
			 var place = document.getElementById("tihuanduixiang");
			 var citys = document.getElementById("citys")
			 place.innerText=txt;
			 citys.innerText=txt;
			 placeLayer.style.display="none";
		}
	</script>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">

			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://localhost/mt/index.php" class="link"><img
								src="../images/logo0000.gif" />
						</a>
					</div>
					<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								长沙
							</h2>
						</div>
						<div id="guides-city-change" class="change">
							切换城市
						</div>
						<div id="guides-city-list" class="city-list">
							<ul>
								<c:forEach items="${city.allLinker}" var="cs">
								<li class="current">
										<div onclick="selectPlace('${cs.chinesscity}')">
											${cs.chinesscity}
										</div>
								</li>
									</c:forEach>
									<c:forEach items="${tuangou}" var="cs">
								<li class="current">
										<div onclick="selectPlace('${cs.fid}')">
											${cs.fid}
										</div>
								</li>
									</c:forEach>
							</ul>
						</div>
					</div>
					<div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道<lable id="citys">长沙</lable>明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="输入Email，订阅每日团购信息..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="订阅" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; 短信订阅，免费！</a>&nbsp;
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								取消手机订阅</a>
						</span>
					</div>
					<ul class="nav cf">
						<li>
							<a href="index.jsp">今日团购</a>
						</li>
						<li>
							<a href="wqtg.jsp">往期团购</a>
						</li>
						<li>
							<a href="wzmt.jsp">玩转美团</a>
						</li>
						<c:choose>
							<c:when test="${username!=null}">
								<a href="../all.do">讨论区</a>
							</c:when>
							<c:otherwise>
								<a href="login.html">讨论区</a>
							</c:otherwise>
						</c:choose>
					</ul>
					<div class="refer">
						&raquo;&nbsp;
						<a href="http://localhost/mt/subscribe.php">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://localhost/mt/account/invite.php">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">优惠券验证及消费登记</a>
					</div>
					<div class="logins">
						<ul id="account">
							<li class="login">
								<a href="login.html">登录</a>
							</li>
							<li class="signup">
								<a href="regedit.html">注册</a>
							</li>
						</ul>
						<div class="line "></div>
					</div>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="learn">
						<div class="dashboard" id="dashboard">



							<ul>
								<li class="current">
									<a href="wzmt.jsp" onclick="show(1)">玩转美团</a>
									<span></span>
								</li>
								<li>
									<a href="#.jap" onclick="show(2)">常见问题</a>
									<span></span>
								</li>
								<li>
									<a href="#.jsp" onclick="show(3)">美团是什么</a>
									<span></span>
								</li>
							</ul>
						</div>


						<div id="content" class="about clear">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											玩转美团
										</h2>
									</div>
									<div class="sect">






										<c:forEach items="${q.all}" var="tz" varStatus="i">
											<div id="mydiv"
												style="width: 670px; background: write; display: block">
												<div class="guide"
													style="margin-top: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; width: 660px; height: 570px; background-image: url(../images/bg-guide.jpg); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; position: relative; background-position: initial initial; background-repeat: no-repeat no-repeat;">
													<ol
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														<li class="step2"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 443px; top: 190px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																${tz.fenxiang}
															</p>
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"></p>
														</li>
														<li class="step3"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 150px; top: 435px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																${tz.xiaofei}
															</p>
														</li>
														<li class="step4"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 443px; top: 435px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																${tz.pingjia}
															</p>
														</li>
														<ol
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"></ol>
													</ol>
												</div>
										</c:forEach>
									</div>

									<c:forEach items="${q.all}" var="tz" varStatus="i">
										<div id="mydiv1"
											style="width: 670px; background: write; display: none">
											<div>
												<p>
													<strong>${tz.mtssh} </strong>
												</p>
												<p>
													${tz.mtsshnr}
												</p>
												<p>
													<strong> ${tz.jttgbuzemgm}</strong>
												</p>
												<p>
													${tz.jttgbuzemgmnr}
												</p>
												<p>
													<strong>${tz.rhfk} </strong>
												</p>
												<p>
													${tz.rhfknr }&nbsp; &nbsp; &nbsp;
												</p>
												<p>
													<strong>${tz.tgrsbz }</strong>
												</p>
												<p>
													${tz.tgrsbznr}
												</p>
												<p>
													<strong>${tz.shsmtj} </strong>
												</p>
												<p>
													${tz.shsmtjnr}
												</p>
												<p>
													<strong> ${tz.symtjyh } </strong>
												</p>
												<p>
													${tz.symtjyhnr }
												</p>
												<p>
													<strong>${tz.mymtj}</strong>？
												</p>
												<p>
													${tz.mymtjnr}
												</p>
												<p>
													<strong>${tz.jfsmh}</strong>
												</p>
												<p>
													${tz.jfsmhnr }
												</p>
												<p>
													<strong>${tz.wshdyj }</strong>
												</p>
												<p>
													${tz.wshdyjnr}
												</p>
												<p>
													<strong>${tz.rhtjyj}</strong>
												</p>
												<p>
													${tz.rhtjyjnr }
												</p>
												<p>
													<strong>${tz.smqktk}</strong>
												</p>
												<p>
													${tz.smqktknr}
												</p>
												<p>
													<strong> ${tz.sjzztglx} </strong>
												</p>
												<p>
													${tz.sjzztglxnr}
												</p>
											</div>
										</div>
									</c:forEach>

									<div id="mydiv2"
										style="width: 670px; background: write; display: none">
										<c:forEach items="${q.all}" var="tz" varStatus="i">
					${tz.mtssm}</c:forEach>
										<div class="sect">
											<img src="../images/13012762613058.gif" alt="" />
											&nbsp;
											<img src="../images/13012762617624.gif" alt="" />
											&nbsp;
											<img src="../images/13012762606254.gif" alt="" />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="box-bottom"></div>
					</div>
				</div>




				<div id="sidebar">
					<div class="sbox side-business">
						<div class="sbox-bubble"></div>
						<div class="sbox-top"></div>
						<div class="sbox-content">
							<div class="tip">
								<h2>
									我要提供团购信息
								</h2>
								<p>
									消费达人、优质商家、淘宝大卖家们，
									<a href="http://localhost/mt/feedback/seller.php">请点这里</a>
								</p>
							</div>
						</div>
						<div class="sbox-bottom"></div>
					</div>
					<div class="deal-subscribe">
						<div class="top"></div>
						<div class="body" id="deal-subscribe-body">
							<form id="deal-subscribe-form" method="post"
								action="http://localhost/mt/subscribe.php">
								<table class="address">
									<tr>
										<td>
											<input type="text" name="email" class="f-text"
												id="deal-subscribe-form-email" xtip="请输入你的Email..." value="" />
										</td>
										<td>
											<input type="hidden" name="city_id" value="4" />
											<input type="image" src="../images/button-s.gif" value="订阅" />
										</td>
									</tr>
								</table>
							</form>
							<p class="text">
								每天都有新惊喜，
								<br />
								我们会邮件通知您！
								<br />
								<span class="required">*</span> 此服务可以随时取消
							</p>
						</div>
						<div class="bottom"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- bd end -->
		<!-- bdw end -->

		<div id="ftw">
			<div id="ft">
				<p class="contact">
					<a href="http://localhost/mt/feedback/suggest.php">意见反馈</a>
				</p>
				<ul class="cf">
					<li class="col">
						<h3>
							用户帮助
						</h3>
						<ul class="sub-list">
							<li>
								<a href="">玩转美团</a>
							</li>
							<li>
								<a href="http://localhost/mt/help/faqs.php">常见问题</a>
							</li>
							<li>
								<a href="http://localhost/mt/help/zuitu.php">什么是美团</a>
							</li>
							<li>
								<a href="http://localhost/mt/help/api.php">开发API</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							获取更新
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://localhost/mt/subscribe.php?ename=jinan">邮件订阅</a>
							</li>
							<li>
								<a href="http://localhost/mt/feed.php?ename=jinan">RSS订阅</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							合作与联系
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://localhost/mt/feedback/seller.php">商务合作</a>
							</li>
							<li>
								<a href="http://localhost/mt/help/link.php">友情链接</a>
							</li>
							<li>
								<a href="shdl.jsp">商户后台</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							公司信息
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://localhost/mt/about/us.php">关于美团</a>
							</li>
							<li>
								<a href="http://localhost/mt/about/job.php">工作机会</a>
							</li>
							<li>
								<a href="http://localhost/mt/about/terms.php">用户协议</a>
							</li>
							<li>
								<a href="http://localhost/mt/about/privacy.php">隐私声明</a>
							</li>
						</ul>
					</li>
					<li class="col end">
						<div class="logo-footer">
							<a href="http://localhost/mt/"><img
									src="../images/logo-foo.gif" />
							</a>
						</div>
					</li>
				</ul>
				<div class="copyright">
					<p>
						&copy;
						<span>2010</span>&nbsp;美团(now6.cn)版权所有&nbsp;
						<a href="http://localhost/mt/about/terms.php">使用美团前必读</a>&nbsp;
						<a href="http://www.miibeian.gov.cn/" target="_blank"></a>&nbsp;Powered
						by
						<a href="http://tuan.now6.cn/" target="_blank">tuan.now6.cn</a>
					</p>
				</div>
			</div>
		</div>

	</body>
</html>