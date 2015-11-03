<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	    <jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<jsp:useBean id="cout" class="dao.question.QuestionDaoImp" />
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>仅售7.9元！原价18元的浪莎包芯丝美腿多彩连裤袜1条（黑色/肤色/墨绿色/深紫色/浅灰色/深灰色/咖啡色，7色任选）。透气、柔软、舒适，让鞋与双脚从此默契。这个春天，浪莎与您一同迎接美丽！
			| 美团 - 精品团购每一天 |全部购物|全部团购|全部打折</title>
		<meta name="description" content="精品团购每一天|全部购物|全部团购|全部打折" />
		<meta name="keywords"
			content="美团, 全部, 全部美团，全部购物，全部团购，全部打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.19/mt/feed.php?ename=" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 1;</script>
		<script src="../images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">
		function selectPlace(txt) { var place =
		document.getElementById("tihuanduixiang"); var citys =
		document.getElementById("citys") place.innerText=txt;
		citys.innerText=txt; placeLayer.style.display="none"; }
		</script>
	</head>

	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">

			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.19/mt/index.php" class="link"><img
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
						<form action="http://192.168.2.19/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道<lable id="cirys">长沙</lable>明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="0" />
							<input id="header-subscribe-email" type="text"
								xtip="输入Email，订阅每日团购信息..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="订阅" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; 短信订阅，免费！</a>&nbsp;
							<a class="sms" onclick=X.miscajax('sms', 'unsubscribe');;
>&raquo;
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
						<a href="#">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="#">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
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
										<a href="http://localhost/mt/account/logout.php">${username}</a>
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
							<a href="http://192.168.2.19/mt/coupon/index.php">我的优惠券</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/account/settings.php">帐户设置</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="sysmsg-guide">
						<div class="link">
							<a href="http://192.168.2.19/mt/help/tour.php"></a>
						</div>
						<a id="sysmsg-guide-close" href="javascript:void(0);"
							class="close">关闭</a>
					</div>

					<div id="sysmsg-tip">
						<!--<div class="sysmsg-tip-top"></div>
						  <div class="sysmsg-tip-content">
							您已经下过订单，但还没有付款。
							<a href="../shops.do">查看订单并付款</a><span id="sysmsg-tip-close"
								class="sysmsg-tip-close">关闭</span>
						</div>--><br /></div>
					<div id="deal-default">

						<div id="deal-default">
							<div id="deal-share">
								<div class="deal-share-top">
									<div class="deal-share-links">
										<h4>
											分享到：
										</h4>
										<ul class="cf">
											<li>
												<a class="im" href="javascript:void(0);" id="deal-share-im">MSN/QQ</a>
											</li>
											<li>
												<a class="kaixin"
													href="http://www.kaixin001.com/repaste/share.php?rurl=http%3A%2F%2F192.168.2.19%2Fmt%2Fteam.php%3Fid%3D4%26r%3D1&rtitle=%E4%BB%85%E5%94%AE7.9%E5%85%83%EF%BC%81%E5%8E%9F%E4%BB%B718%E5%85%83%E7%9A%84%E6%B5%AA%E8%8E%8E%E5%8C%85%E8%8A%AF%E4%B8%9D%E7%BE%8E%E8%85%BF%E5%A4%9A%E5%BD%A9%E8%BF%9E%E8%A3%A4%E8%A2%9C1%E6%9D%A1%EF%BC%88%E9%BB%91%E8%89%B2%2F%E8%82%A4%E8%89%B2%2F%E5%A2%A8%E7%BB%BF%E8%89%B2%2F%E6%B7%B1%E7%B4%AB%E8%89%B2%2F%E6%B5%85%E7%81%B0%E8%89%B2%2F%E6%B7%B1%E7%81%B0%E8%89%B2%2F%E5%92%96%E5%95%A1%E8%89%B2%EF%BC%8C7%E8%89%B2%E4%BB%BB%E9%80%89%EF%BC%89%E3%80%82%E9%80%8F%E6%B0%94%E3%80%81%E6%9F%94%E8%BD%AF%E3%80%81%E8%88%92%E9%80%82%EF%BC%8C%E8%AE%A9%E9%9E%8B%E4%B8%8E%E5%8F%8C%E8%84%9A%E4%BB%8E%E6%AD%A4%E9%BB%98%E5%A5%91%E3%80%82%E8%BF%99%E4%B8%AA%E6%98%A5%E5%A4%A9%EF%BC%8C%E6%B5%AA%E8%8E%8E%E4%B8%8E%E6%82%A8%E4%B8%80%E5%90%8C%E8%BF%8E%E6%8E%A5%E7%BE%8E%E4%B8%BD%EF%BC%81&rcontent=%E9%98%B2%E4%BC%AA%E6%A0%87%E7%A0%81%EF%BC%8C%E6%AD%A3%E5%93%81%E4%BF%9D%E8%AF%81%0D%0A%E5%8C%85%E8%8A%AF%E4%B8%9D%E7%BB%A2%EF%BC%8C%E9%80%8F%E6%B0%94%E8%88%92%E9%80%82%0D%0A%E4%B8%83%E8%89%B2%E4%BB%BB%E9%80%89%EF%BC%8C%E4%BF%AE%E8%BA%AB%E6%B0%94%E8%B4%A8"
													target="_blank">开心</a>
											</li>
											<li>
												<a class="renren"
													href="http://share.renren.com/share/buttonshare.do?link=http%3A%2F%2F192.168.2.19%2Fmt%2Fteam.php%3Fid%3D4%26r%3D1&title=%E4%BB%85%E5%94%AE7.9%E5%85%83%EF%BC%81%E5%8E%9F%E4%BB%B718%E5%85%83%E7%9A%84%E6%B5%AA%E8%8E%8E%E5%8C%85%E8%8A%AF%E4%B8%9D%E7%BE%8E%E8%85%BF%E5%A4%9A%E5%BD%A9%E8%BF%9E%E8%A3%A4%E8%A2%9C1%E6%9D%A1%EF%BC%88%E9%BB%91%E8%89%B2%2F%E8%82%A4%E8%89%B2%2F%E5%A2%A8%E7%BB%BF%E8%89%B2%2F%E6%B7%B1%E7%B4%AB%E8%89%B2%2F%E6%B5%85%E7%81%B0%E8%89%B2%2F%E6%B7%B1%E7%81%B0%E8%89%B2%2F%E5%92%96%E5%95%A1%E8%89%B2%EF%BC%8C7%E8%89%B2%E4%BB%BB%E9%80%89%EF%BC%89%E3%80%82%E9%80%8F%E6%B0%94%E3%80%81%E6%9F%94%E8%BD%AF%E3%80%81%E8%88%92%E9%80%82%EF%BC%8C%E8%AE%A9%E9%9E%8B%E4%B8%8E%E5%8F%8C%E8%84%9A%E4%BB%8E%E6%AD%A4%E9%BB%98%E5%A5%91%E3%80%82%E8%BF%99%E4%B8%AA%E6%98%A5%E5%A4%A9%EF%BC%8C%E6%B5%AA%E8%8E%8E%E4%B8%8E%E6%82%A8%E4%B8%80%E5%90%8C%E8%BF%8E%E6%8E%A5%E7%BE%8E%E4%B8%BD%EF%BC%81"
													target="_blank">人人</a>
											</li>
											<li>
												<a class="douban"
													href="http://www.douban.com/recommend/?url=http%3A%2F%2F192.168.2.19%2Fmt%2Fteam.php%3Fid%3D4%26r%3D1&title=%E4%BB%85%E5%94%AE7.9%E5%85%83%EF%BC%81%E5%8E%9F%E4%BB%B718%E5%85%83%E7%9A%84%E6%B5%AA%E8%8E%8E%E5%8C%85%E8%8A%AF%E4%B8%9D%E7%BE%8E%E8%85%BF%E5%A4%9A%E5%BD%A9%E8%BF%9E%E8%A3%A4%E8%A2%9C1%E6%9D%A1%EF%BC%88%E9%BB%91%E8%89%B2%2F%E8%82%A4%E8%89%B2%2F%E5%A2%A8%E7%BB%BF%E8%89%B2%2F%E6%B7%B1%E7%B4%AB%E8%89%B2%2F%E6%B5%85%E7%81%B0%E8%89%B2%2F%E6%B7%B1%E7%81%B0%E8%89%B2%2F%E5%92%96%E5%95%A1%E8%89%B2%EF%BC%8C7%E8%89%B2%E4%BB%BB%E9%80%89%EF%BC%89%E3%80%82%E9%80%8F%E6%B0%94%E3%80%81%E6%9F%94%E8%BD%AF%E3%80%81%E8%88%92%E9%80%82%EF%BC%8C%E8%AE%A9%E9%9E%8B%E4%B8%8E%E5%8F%8C%E8%84%9A%E4%BB%8E%E6%AD%A4%E9%BB%98%E5%A5%91%E3%80%82%E8%BF%99%E4%B8%AA%E6%98%A5%E5%A4%A9%EF%BC%8C%E6%B5%AA%E8%8E%8E%E4%B8%8E%E6%82%A8%E4%B8%80%E5%90%8C%E8%BF%8E%E6%8E%A5%E7%BE%8E%E4%B8%BD%EF%BC%81"
													target="_blank">豆瓣</a>
											</li>
											<li>
												<a class="sina"
													href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2F192.168.2.19%2Fmt%2Fteam.php%3Fid%3D4%26r%3D1&title=%E4%BB%85%E5%94%AE7.9%E5%85%83%EF%BC%81%E5%8E%9F%E4%BB%B718%E5%85%83%E7%9A%84%E6%B5%AA%E8%8E%8E%E5%8C%85%E8%8A%AF%E4%B8%9D%E7%BE%8E%E8%85%BF%E5%A4%9A%E5%BD%A9%E8%BF%9E%E8%A3%A4%E8%A2%9C1%E6%9D%A1%EF%BC%88%E9%BB%91%E8%89%B2%2F%E8%82%A4%E8%89%B2%2F%E5%A2%A8%E7%BB%BF%E8%89%B2%2F%E6%B7%B1%E7%B4%AB%E8%89%B2%2F%E6%B5%85%E7%81%B0%E8%89%B2%2F%E6%B7%B1%E7%81%B0%E8%89%B2%2F%E5%92%96%E5%95%A1%E8%89%B2%EF%BC%8C7%E8%89%B2%E4%BB%BB%E9%80%89%EF%BC%89%E3%80%82%E9%80%8F%E6%B0%94%E3%80%81%E6%9F%94%E8%BD%AF%E3%80%81%E8%88%92%E9%80%82%EF%BC%8C%E8%AE%A9%E9%9E%8B%E4%B8%8E%E5%8F%8C%E8%84%9A%E4%BB%8E%E6%AD%A4%E9%BB%98%E5%A5%91%E3%80%82%E8%BF%99%E4%B8%AA%E6%98%A5%E5%A4%A9%EF%BC%8C%E6%B5%AA%E8%8E%8E%E4%B8%8E%E6%82%A8%E4%B8%80%E5%90%8C%E8%BF%8E%E6%8E%A5%E7%BE%8E%E4%B8%BD%EF%BC%81"
													target="_blank">新浪微博</a>
											</li>
											<li>
												<a class="email"
													href="mailto:?subject=%D3%D0%D0%CB%C8%A4%C2%F0%A3%BA%BD%F6%CA%DB7.9%D4%AA%A3%A1%D4%AD%BC%DB18%D4%AA%B5%C4%C0%CB%C9%AF%B0%FC%D0%BE%CB%BF%C3%C0%CD%C8%B6%E0%B2%CA%C1%AC%BF%E3%CD%E01%CC%F5%A3%A8%BA%DA%C9%AB%2F%B7%F4%C9%AB%2F%C4%AB%C2%CC%C9%AB%2F%C9%EE%D7%CF%C9%AB%2F%C7%B3%BB%D2%C9%AB%2F%C9%EE%BB%D2%C9%AB%2F%BF%A7%B7%C8%C9%AB%A3%AC7%C9%AB%C8%CE%D1%A1%A3%A9%A1%A3%CD%B8%C6%F8%A1%A2%C8%E1%C8%ED%A1%A2%CA%E6%CA%CA%A3%AC%C8%C3%D0%AC%D3%EB%CB%AB%BD%C5%B4%D3%B4%CB%C4%AC%C6%F5%A1%A3%D5%E2%B8%F6%B4%BA%CC%EC%A3%AC%C0%CB%C9%AF%D3%EB%C4%FA%D2%BB%CD%AC%D3%AD%BD%D3%C3%C0%C0%F6%A3%A1&body=%B7%A2%CF%D6%D2%BB%BA%C3%CD%F8%D5%BE--%C3%C0%CD%C5%A3%AC%CB%FB%C3%C7%C3%BF%CC%EC%D7%E9%D6%AF%D2%BB%B4%CE%CD%C5%B9%BA%A3%AC%B3%AC%D6%B5%A3%A1%0A%0A%BD%F1%CC%EC%B5%C4%CD%C5%B9%BA%CA%C7%A3%BA%BD%F6%CA%DB7.9%D4%AA%A3%A1%D4%AD%BC%DB18%D4%AA%B5%C4%C0%CB%C9%AF%B0%FC%D0%BE%CB%BF%C3%C0%CD%C8%B6%E0%B2%CA%C1%AC%BF%E3%CD%E01%CC%F5%A3%A8%BA%DA%C9%AB%2F%B7%F4%C9%AB%2F%C4%AB%C2%CC%C9%AB%2F%C9%EE%D7%CF%C9%AB%2F%C7%B3%BB%D2%C9%AB%2F%C9%EE%BB%D2%C9%AB%2F%BF%A7%B7%C8%C9%AB%A3%AC7%C9%AB%C8%CE%D1%A1%A3%A9%A1%A3%CD%B8%C6%F8%A1%A2%C8%E1%C8%ED%A1%A2%CA%E6%CA%CA%A3%AC%C8%C3%D0%AC%D3%EB%CB%AB%BD%C5%B4%D3%B4%CB%C4%AC%C6%F5%A1%A3%D5%E2%B8%F6%B4%BA%CC%EC%A3%AC%C0%CB%C9%AF%D3%EB%C4%FA%D2%BB%CD%AC%D3%AD%BD%D3%C3%C0%C0%F6%A3%A1%0A%0A%CE%D2%CF%EB%C4%E3%BB%E1%B8%D0%D0%CB%C8%A4%B5%C4%A3%BA%0A%0Ahttp%3A%2F%2F192.168.2.19%2Fmt%2Fteam.php%3Fid%3D4%26r%3D1"
													id="deal-buy-mailto">邮件</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="deal-share-fix"></div>
								<div id="deal-share-im-c">
									<div class="deal-share-im-b">
										<h3>
											复制下面的内容后通过 MSN 或 QQ 发送给好友：
										</h3>
										<p>
											<input id="share-copy-text" type="text"
												value="http://192.168.2.19/mt/team.php?id=4&r=1" size="30"
												class="f-input" tip="复制成功，请粘贴到你的MSN或QQ上推荐给您的好友" />
											<input id="share-copy-button" type="button" value="复制"
												class="formbutton" />
										</p>
									</div>
								</div>
							</div>
							<div id="content">
								<div id="deal-intro" class="cf">
									<h1>
										<a class="deal-today-link" href="index.jsp">今日团购：</a>${tgform.title}
									</h1>
									<div class="main">
										<div class="deal-buy">
											<div class="deal-price-tag"></div>
											<p class="deal-price">
												<strong>¥${tgform.tgprice}</strong>
												<c:choose>
													<c:when test="${username != null}">
														<span> <a href="tijiaodingdan.jsp"><img
																	src="../images/button-d.gif" /> </a> </span>
													</c:when>
													<c:otherwise>
														<span> <a href="login.html"><img
																	src="../images/button-d.gif" /> </a> </span>
													</c:otherwise>
												</c:choose>
											</p>
										</div>
										<table class="deal-discount">
											<tr>
												<th>
													原价
												</th>
												<th>
													折扣
												</th>
												<th>
													节省
												</th>
											</tr>
											<tr>
												<td>
													${tgform.scprice}
												</td>
												<td>
													${tgform.tgprice/tgform.scprice }
												</td>
												<td>
													¥${tgform.scprice - tgform.tgprice}
												</td>
											</tr>
										</table>
										

										<div class="deal-box deal-status" id="deal-status">
											<p class="deal-buy-tip-top">
												<strong>${n+0}</strong> 人已购买
											</p>
											<div class="progress-pointer" style="padding-left: 129px;">
												<span></span>
											</div>
											<div class="progress-bar">
												<div class="progress-left" style="width: 129px;"></div>
												<div class="progress-right "></div>
											</div>
											<div class="cf">
												<div class="min">
													0
												</div>
												<div class="max">
													20
												</div>
											</div>
											<p class="deal-buy-tip-btm">
												还差
												<strong>${20-n}</strong> 人到达最低团购人数
											</p>
										</div>
									</div>
									<div class="side">
										<div class="deal-buy-cover-img" id="team_images">
											<img src="../images/${tgform.spimg2}" />
										</div>
										<div class="digest">
											<br />
											${tgform.orderform}
										</div>
									</div>
								</div>
								<div id="deal-stuff" class="cf">
									<div class="clear box box-split"><br /><br /><br /></div>
								</div>
							</div>
							<div id="sidebar">
								<div class="sbox side-invite-tip">
									<div class="sbox-top"></div>
									<div class="sbox-content">
										<div class="tip">
											<h2>
												邀请有奖
											</h2>
											<p class="text">
												每邀请一位好友首次购买，您将获
												<strong><span class="money">¥</span>0</strong>元返利
											</p>
											<p class="link">
												<a href="http://192.168.2.19/mt/account/invite.php">&raquo;&nbsp;点击获取您的专用邀请链接</a>
											</p>
										</div>
									</div>
									<div class="sbox-bottom"></div>
								</div>
								<div class="sbox side-business">
									<div class="sbox-top"></div>
									<div class="sbox-content">
										<div class="tip">
											<h2>
												号外
											</h2>
											<div>
												<span
													style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"><h2
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; font-size: 16px;">
														“美梦成真”系列抽奖
													</h2> </span>
												<ul class="lottery-result-list" id="lottery-list"
													style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 16px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“iPad2现货”
														<a href="http://www.meituan.com/deal/2ipad2"
															style="color: red; text-decoration: none;">火爆进行中</a>
													</li>
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“李宇春演唱会”
														<a
															href="http://www.meituan.com/lottery/result/liyuchun2011"
															style="color: red; text-decoration: none;">抽奖结果</a>
													</li>
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“卫生巾基金”
														<a href="http://www.meituan.com/lottery/result/38fn"
															style="color: red; text-decoration: none;">抽奖结果</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="sbox-bottom"></div>
								</div>

								<div class="sbox side-business">
									<div class="sbox-top"></div>
									<div class="sbox-content">
										<div class="tip">
											<h2>
												全部公告
											</h2>
											<div>
												<span
													style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"><h2
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; font-size: 16px;">
														“美梦成真”系列抽奖
													</h2> </span>
												<ul class="lottery-result-list" id="lottery-list"
													style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 16px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“iPad2现货”
														<a href="http://www.meituan.com/deal/2ipad2"
															style="color: red; text-decoration: none;">火爆进行中</a>
													</li>
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“李宇春演唱会”
														<a
															href="http://www.meituan.com/lottery/result/liyuchun2011"
															style="color: red; text-decoration: none;">抽奖结果</a>
													</li>
													<li
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 3px; padding-right: 0px; padding-bottom: 3px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
														“卫生巾基金”
														<a href="http://www.meituan.com/lottery/result/38fn"
															style="color: red; text-decoration: none;">抽奖结果</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="sbox-bottom"></div>
								</div>
								<div class="deal-consult sbox">
									<div class="sbox-bubble"></div>
									<div class="sbox-top"></div>
									<div class="sbox-content">
										<div class="deal-consult-tip">
											<h2>
												本单答疑
											</h2>
											<p class="nav">
												<a href="qingdenglu.jsp">查看全部(${cout.count})</a> |
												<c:choose>
													<c:when test="${username != null}">
														<a href="tiwen.jsp">我要提问</a>
													</c:when>
													<c:otherwise>
														<a href="login.html">我要提问</a>
													</c:otherwise>
												</c:choose>
											</p>
											<ul class="list">
											</ul>
											<div class="custom-service">
												<p class="im">
													<a id="service-msn-help" href="msnim:chat?contact="><img
															src="../images/button-c.gif" /> </a>&nbsp;
													<a
														href="tencent://message/?uin=&Site=%E7%BE%8E%E5%9B%A2&Menu=yes"><img
															src="../images/button-e.gif" alt="" /> </a>
												</p>
												<p class="time">
													周一至周六 9:00-18:00
												</p>
											</div>
										</div>
									</div>
									<div class="sbox-bottom"></div>
								</div>
								
								<div class="deal-subscribe">
									<div class="top"></div>
									<div class="body" id="deal-subscribe-body">
										<form id="deal-subscribe-form" method="post"
											action="http://192.168.2.19/mt/subscribe.php">
											<table class="address">
												<tr>
													<td>
														<input type="text" name="email" class="f-text"
															id="deal-subscribe-form-email" xtip="请输入你的Email..."
															value="" />
													</td>
													<td>
														<input type="hidden" name="city_id" value="0" />
														<input type="image" src="../images/button-s.gif"
															value="订阅" />
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
							<a href="http://192.168.2.19/mt/feedback/suggest.php">意见反馈</a>
						</p>
						<ul class="cf">
							<li class="col">
								<h3>
									用户帮助
								</h3>
								<ul class="sub-list">
									<li>
										<a href="http://192.168.2.19/mt/help/tour.php">玩转美团</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/help/faqs.php">常见问题</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/help/zuitu.php">什么是美团</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/help/api.php">开发API</a>
									</li>
								</ul>
							</li>
							<li class="col">
								<h3>
									获取更新
								</h3>
								<ul class="sub-list">
									<li>
										<a href="http://192.168.2.19/mt/subscribe.php?ename=">邮件订阅</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/feed.php?ename=">RSS订阅</a>
									</li>
								</ul>
							</li>
							<li class="col">
								<h3>
									合作与联系
								</h3>
								<ul class="sub-list">
									<li>
										<a href="http://192.168.2.19/mt/feedback/seller.php">商务合作</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/help/link.php">友情链接</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/biz/index.php">商户后台</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/manage/index.php">管理美团</a>
									</li>
								</ul>
							</li>
							<li class="col">
								<h3>
									公司信息
								</h3>
								<ul class="sub-list">
									<li>
										<a href="http://192.168.2.19/mt/about/us.php">关于美团</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/about/job.php">工作机会</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/about/terms.php">用户协议</a>
									</li>
									<li>
										<a href="http://192.168.2.19/mt/about/privacy.php">隐私声明</a>
									</li>
								</ul>
							</li>
							<li class="col end">
								<div class="logo-footer">
									<a href="http://192.168.2.19/mt/"><img
											src="../images/logo-foo.gif" /> </a>
								</div>
							</li>
						</ul>
						<div class="copyright">
							<p>
								&copy;
								<span>2010</span>&nbsp;美团(now6.cn)版权所有&nbsp;
								<a href="http://192.168.2.19/mt/about/terms.php">使用美团前必读</a>&nbsp;
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