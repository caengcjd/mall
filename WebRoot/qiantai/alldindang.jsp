<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	    <jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<jsp:useBean id="add" class="dao.dingdan.DdDaoImp"></jsp:useBean>
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团 - 精品团购每一天|长沙购物|长沙团购|长沙打折</title>
		<meta name="description" content="精品团购每一天|长沙购物|长沙团购|长沙打折" />
		<meta name="keywords"
			content="美团, 长沙, 长沙美团，长沙购物，长沙团购，长沙打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.197/mt/feed.php?ename=jinan"
			rel="alternate" title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 1;</script>
		<script src="../images/index000.js" type="text/javascript"></script>
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
						<a href="http://192.168.2.197/mt/index.php" class="link"><img
								src="../images/logo0000.gif" /> </a>
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
						<form action="http://192.168.2.197/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道长沙明天的团购是什么吗？
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
								取消手机订阅</a> </span>
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
						<a href="http://192.168.2.197/mt/subscribe.php">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.197/mt/account/invite.php">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">优惠券验证及消费登记</a>
					</div>
					<div class="logins">
						<ul id="account">
							<c:choose>
								<c:when test="${username == null}">
									<li class="login">
										<a href="regedit.html">注册</a>
									</li>
									<li class="login">
										<a href="login.html">登录</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="logout">
										<a href="../houtai/">${username}</a>
									</li>
									<li class="account">
										<a href="alldindang.jsp" id="myaccount" class="account">我的美团</a>
									</li>
									<li class="login">
										<a href="regedit.html">退出</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
						<div class="line islogin"></div>
					</div>
					<ul id="myaccount-menu">
						<li>
							<a href="alldindang.jsp">我的订单</a>
						</li>
						<li>
							<a href="#">我的优惠券</a>
						</li>
						<li>
							<a href="#">帐户设置</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li class="current">
									<a href="alldindang.jsp">我的订单</a><span></span>
								</li>
								<li>
									<a href="#">我的优惠券</a><span></span>
								</li>
								<li>
									<a href="#">账户余额</a><span></span>
								</li>
								<li>
									<a href="#">账户设置</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											我的订单
										</h2>
										<ul class="filter">
											<li class="label">
												分类:
											</li>
											<li class="current">
												<a href="#">全部</a>
											</li>
											<li>
												<a href="#">未付款</a>
											</li>
											<li>
												<a href="#">已付款</a>
											</li>
										</ul>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="380">
													团购项目
												</th>
												<th width="60">
													数量
												</th>
												<th width="60">
													总价
												</th>
												<th width="60">
													状态
												</th>
												<th width="40">
													操作
												</th>
											</tr>
											<c:forEach items="${add.alldd}" var="d">
												<tr class="alt">
													<td style="text-align: left;">
														<a class="deal-title"
															href="http://192.168.2.197/mt/team.php?id=6"
															target="_blank">${d.dtitle}</a>
													</td>
													<td>
														${n}
													</td>
													<td>
														<span class="money">¥</span>${d.dmoney*n}
													</td>
													<td>
														${d.status}
														<!--{/if}-->
													</td>
													<td class="op">
														<a href="http://192.168.2.197/mt/order/view.php?id=4">详情</a>
													</td>
												</tr>
											</c:forEach>

											<tr>
												<td colspan="5">
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
						<div id="sidebar">
							<div class="sbox">
								<div class="sbox-top"></div>
								<div class="sbox-content">
									<div class="side-tip">
										<h3 class="first">
											我已支付成功，为什么没有优惠券？
										</h3>
										<p>
											因为还没有到达最低团购人数，一旦凑够人数，您就会看到优惠券了。
										</p>
										<h3>
											什么是已过期订单？
										</h3>
										<p>
											如果某个订单未及时付款，那么等团购结束时就无法再付款了，这种订单就是过期订单。
										</p>
									</div>
								</div>
								<div class="sbox-bottom"></div>
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
						<a href="http://192.168.2.197/mt/feedback/suggest.php">意见反馈</a>
					</p>
					<ul class="cf">
						<li class="col">
							<h3>
								用户帮助
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.197/mt/help/tour.php">玩转美团</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/help/faqs.php">常见问题</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/help/zuitu.php">什么是美团</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/help/api.php">开发API</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								获取更新
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.197/mt/subscribe.php?ename=jinan">邮件订阅</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/feed.php?ename=jinan">RSS订阅</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								合作与联系
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.197/mt/feedback/seller.php">商务合作</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/help/link.php">友情链接</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/biz/index.php">商户后台</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/manage/index.php">管理美团</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								公司信息
							</h3>
							<ul class="sub-list">
								<li>
									<a href="http://192.168.2.197/mt/about/us.php">关于美团</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/about/job.php">工作机会</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/about/terms.php">用户协议</a>
								</li>
								<li>
									<a href="http://192.168.2.197/mt/about/privacy.php">隐私声明</a>
								</li>
							</ul>
						</li>
						<li class="col end">
							<div class="logo-footer">
								<a href="http://192.168.2.197/mt/"><img
										src="../images/logo-foo.gif" /> </a>
							</div>
						</li>
					</ul>
					<div class="copyright">
						<p>
							&copy;
							<span>2010</span>&nbsp;美团(now6.cn)版权所有&nbsp;
							<a href="http://192.168.2.197/mt/about/terms.php">使用美团前必读</a>&nbsp;
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