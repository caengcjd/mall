<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	     <jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<jsp:useBean id="s" class="dao.wzmt.Wqtgdao" />
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>近期团购 | 美团 - 精品团购每一天 |长沙购物|长沙团购|长沙打折</title>
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
		<script type="text/javascript">	
		function selectPlace(txt)
		{
			 var place = document.getElementById("tihuanduixiang");
			 var citys = document.getElementById("citys")
			 var citylist = document.getElementById("citylist")
			 place.innerText=txt;
			 citys.innerText=txt;
			 citylist.innerText=txt;
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
						<li>
							<a href="all.jsp">讨论区</a>
						</li>
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
					<div id="recent-deals">
						<div id="content">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											<lable id="citylist">长沙</lable>近期团购
										</h2>
									</div>
									<div class="sect">
										<c:forEach items="${s.all}" var="t" varStatus="i">
											<ul class="deals-list">
												<li class=" first">
													<p class="time">
														${t.endtime}
													</p>
													<div style="height: 50px; overflow: hidden">
														<h4>
															<a href="http://localhost/mt/team.php?id=4"
																title="仅售7.9元！原价18元的浪莎包芯丝美腿多彩连裤袜1条（黑色/肤色/墨绿色/深紫色/浅灰色/深灰色/咖啡色，7色任选）。透气、柔软、舒适，让鞋与双脚从此默契。这个春天，浪莎与您一同迎接美丽！"
																target="_blank">${t.orderform}</a>
														</h4>
													</div>
													<div class="pic">
														<div class="isopen"></div>
														<a href="http://localhost/mt/team.php?id=4"
															title="仅售7.9元！原价18元的浪莎包芯丝美腿多彩连裤袜1条（黑色/肤色/墨绿色/深紫色/浅灰色/深灰色/咖啡色，7色任选）。透气、柔软、舒适，让鞋与双脚从此默契。这个春天，浪莎与您一同迎接美丽！"
															target="_blank"><img
																alt="仅售7.9元！原价18元的浪莎包芯丝美腿多彩连裤袜1条（黑色/肤色/墨绿色/深紫色/浅灰色/深灰色/咖啡色，7色任选）。透气、柔软、舒适，让鞋与双脚从此默契。这个春天，浪莎与您一同迎接美丽！"
																src="../images/${t.spimg2}"width="200" height="121"/>
														</a>
													</div>
													<div class="info">
														<p class="total">
															<strong class="count">20</strong>人购买
														</p>
														<p class="price">
															原价：
															<strong class="old"><span class="money">¥</span>${t.scprice}</strong>
															<br />
															折扣：
															<strong class="discount">${t.tgprice/t.scprice*10}</strong>
															<br />
															现价：
															<strong><span class="money">¥</span>${t.tgprice}</strong>
															<br />
															节省：
															<strong><span class="money">¥</span>${t.scprice-t.tgprice}</strong>
															<br />
														</p>
													</div>
												</li>
											</ul>
										</c:forEach>
										<div class="clear"></div>
										<div>
											<ul class="paginator">
												<li class="current">
													1
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
							<div class="deal-subscribe">
								<div class="top"></div>
								<div class="body" id="deal-subscribe-body">
									<form id="deal-subscribe-form" method="post"
										action="http://localhost/mt/subscribe.php">
										<table class="address">
											<tr>
												<td>
													<input type="text" name="email" class="f-text"
														id="deal-subscribe-form-email" xtip="请输入你的Email..."
														value="" />
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
			</div>
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
									<a href="wzmt.jsp">玩转美团</a>
								</li>
								<li>
									<a href="wzmt.jsp">常见问题</a>
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
		</div>
	</body>
</html>

