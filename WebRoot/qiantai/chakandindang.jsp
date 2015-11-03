<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<jsp:useBean id="city" class="dao.city.CityDaoImp" />
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
						<a href="http://192.168.2.19/mt/index.php" class="link">c<img
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
								<c:forEach items="${city.allLink}" var="cs">
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
								想知道
								<lable id="citys">长沙</lable>
								明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="0" />
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
							<a href="http://192.168.2.19/mt/index.php">今日团购</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/team/index.php">往期团购</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/help/tour.php">玩转美团</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/forum/index.php">讨论区</a>
						</li>
					</ul>
					<div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.19/mt/subscribe.php">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.19/mt/account/invite.php">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">优惠券验证及消费登记</a>
					</div>
					<div class="logins">
						<ul id="account">
							<li class="username">
								欢迎您，admin！
							</li>
							<li class="account">
								<a href="http://192.168.2.19/mt/order/index.php" id="myaccount"
									class="account">我的美团</a>
							</li>
							<li class="logout">
								<a href="http://192.168.2.19/mt/account/logout.php">退出</a>
							</li>
						</ul>
						<div class="line islogin"></div>
					</div>
					<ul id="myaccount-menu">
						<li>
							<a href="http://192.168.2.19/mt/order/index.php">我的订单</a>
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
						<div class="sysmsg-tip-top"></div>
						<div class="sysmsg-tip-content">
							您已经下过订单，但还没有付款。
							<a href="http://192.168.2.19/mt/order/check.php?id=1">查看订单并付款</a><span
								id="sysmsg-tip-close" class="sysmsg-tip-close">关闭</span>
						</div>
						<div class="sysmsg-tip-bottom"></div>
					</div>
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
										<a class="deal-today-link" href="">今日团购：</a>仅售7.9元！原价18元的浪莎包芯丝美腿多彩连裤袜1条（黑色/肤色/墨绿色/深紫色/浅灰色/深灰色/咖啡色，7色任选）。透气、柔软、舒适，让鞋与双脚从此默契。这个春天，浪莎与您一同迎接美丽！
									</h1>
									<div class="main">
										<div class="deal-buy">
											<div class="deal-price-tag"></div>
											<p class="deal-price">
												<strong>¥7.9</strong><span><a
													href="http://192.168.2.19/mt/team/buy.php?id=4"><img
															src="../images/button-d.gif" /> </a> </span>
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
													¥18
												</td>
												<td>
													4.39折
												</td>
												<td>
													¥10.1
												</td>
											</tr>
										</table>
										<div class="deal-box deal-timeleft deal-on" id="deal-timeleft"
											curtime="1303261122000" diff="124297278000">
											<h3>
												剩余时间
											</h3>
											<div class="limitdate">
												<ul id="counter">
													<li>
														<span>1438</span>天
													</li>
													<li>
														<span>15</span>小时
													</li>
													<li>
														<span>1</span>分钟
													</li>
												</ul>
											</div>
										</div>

										<div class="deal-box deal-status" id="deal-status">
											<p class="deal-buy-tip-top">
												<strong>699</strong> 人已购买
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
													1000
												</div>
											</div>
											<p class="deal-buy-tip-btm">
												还差
												<strong>301</strong> 人到达最低团购人数
											</p>
										</div>
									</div>
									<div class="side">
										<div class="deal-buy-cover-img" id="team_images">
											<img src="../images/13012127.jpg" />
										</div>
										<div class="digest">
											<br />
											防伪标码，正品保证
											<br />
											包芯丝绢，透气舒适
											<br />
											七色任选，修身气质
										</div>
									</div>
								</div>
								<div id="deal-stuff" class="cf">
									<div class="clear box box-split">
										<div class="box-top"></div>
										<div class="box-content cf">
											<div class="main">
												<h2 id="detail">
													本单详情
												</h2>
												<div class="blk detail">
													<span
														style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"></span>
													<div class="blk detail"
														style="margin-top: 7px; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
															<strong>仅4.3折，透气舒适，让女人更精致</strong>
														</p>
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
															本次团购正品浪莎包芯丝美腿多彩连裤袜，7色任选，高品质、低折扣，原价18元，美团价7.9元。
														</p>
														<div
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
															<img
																src="http://p0.meituan.com/deal/201103/24/03_03241821312.jpg"
																style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
																alt="" />
														</div>
														<ul class="list"
															style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
															<strong>【温馨提示】</strong>：
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																商家将在团购结束后2个工作日发货，请您耐心等待；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																每人可购买多份，请填写详细配送信息；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																本单售价不足10元，故不支持邀请返利；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																不支持7天未消费退款。
															</li>
														</ul>
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
															<strong>配送说明</strong>
														</p>
														<ul class="list"
															style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																配送范围：本次团购限北京地区，通过圆通快递为您发货；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																品质保证：商家保证所售均为正品。购买前请详细了解产品特性和使用方法，如有疑问，可致电商家客服（010-57111757）咨询；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																邮资说明：每单需要支付快递费用8元；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																快件签收：请本人当场仔细检查验收，如商品存在配送有误、数量缺失、产品破损等问题，请当面向配送人员提出并拒收，商家会尽快为您安排调换。签收后如发现上述问题，不提供退换。
															</li>
														</ul>
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
															<strong>柔软透气，尽显完美身姿</strong>
														</p>
														<ul class="list"
															style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																<strong>浪莎包芯丝</strong>：使用有多股超细纤维合成一股的多孔原丝编织而成，与普通丝袜相比，具有更优良的柔软性和贴肤性，多股纤维间的空气量多，透气性非常出色。
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																<strong>抗静电处理</strong>：采用高档材料，精心设计编织，弹性极佳。而且经特殊工艺增加抗静电剂处理，穿袜不起“电”哦~
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																浪莎博士后工作站研制出品。袜子柔软、透气、舒适、美腿，腹部有束腹功能，穿着不易下滑，将您的婀娜身姿完美衬托。
															</li>
														</ul>
														<div
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
															<img
																src="http://p0.meituan.com/deal/201103/24/06_0324143120.jpg"
																style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
																alt="" />
														</div>
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
															<strong>选择浪莎，专业品质</strong>
														</p>
														<ul
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
															<p
																style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																浪莎集团公司是一家主要从事纺织品生产、销售的公司，创办于1995年6月，旗下设有浪莎针织有限公司、浪莎纤维、浪莎服饰、浪菲日化、浪莎房地产、上海浪莎公司、香港浪莎公司、美国浪莎、迪拜浪莎公司、俄罗斯浪莎公司，是行业的第一大品牌厂家。
															</p>
															<p
																style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"></p>
														</ul>
														<div
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
															<img
																src="http://p0.meituan.com/deal/201103/24/05_0324143116.jpg"
																style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
																alt="" />
														</div>
														<p
															style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
															<strong>正确穿袜，效果更佳</strong>
														</p>
														<ul class="list"
															style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
															<strong>【穿袜小贴士】</strong>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																穿之前先将手指甲打磨光滑，否则会刮坏丝袜哦~
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																将脚指甲打磨光滑，并保持足部皮肤的光滑；
															</li>
															<li
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
																取出丝袜，对好前后再开始穿，具体步骤见下图：
															</li>
														</ul>
														<div
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
															<img
																src="http://p0.meituan.com/deal/201103/24/01_0324205327.jpg"
																style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
																alt="" />
														</div>
													</div>
												</div>
												<h2 id="detailit">
													特别提示
												</h2>
												<div class="blk cf">
													<span
														style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; line-height: 22px;"></span>
													<ul
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial;">
															每单邮资8元，仅限北京地区购买
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial;">
															团购结束后2个工作日开始发货，货品将在团购结束后7~15个工作日送达
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial;">
															不支持地址更改，请仔细填写收件信息
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial;">
															本单不支持7天未消费退款
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial;">
															本单低于10元，没有邀请返利
														</li>
													</ul>
												</div>
												<h2 id="userreview">
													他们说
												</h2>
												<div class="blk review">
													<ul>
														<li>
															夏天穿还是可以的，加档和没加档主要是臀部加宽的区别，加档了适合臀部更大的女生穿
															<span>－－<a href="http://192.168.2.19/mt/百度知道"
																target="_blank">网友</a> </span>
														</li>
													</ul>
												</div>
												<h2 id="systemreview">
													美团说
												</h2>
												<div class="blk review">
													<span
														style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"></span>
													<p
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														MM们在选购性感丝袜的时候，是否知道它们来自于16世纪上层社会的男性袜裤造型？那个时代，女性的小腿不是藏在深深的裙摆里，就是裹在松垮的裤子里。直到二十世纪初，由于成衣的普及，丝袜才进入普通女性的衣柜，成为必不可少的配饰。
													</p>
													<p
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														不得不承认，丝袜解放了女性的双腿；现代技术的发展，更是让爱美的MM春夏秋冬都能用袜裤勾勒出小腿的曲线。无论在好莱坞的星光大道，还是在巴黎的T型舞台，明星们的一颦一笑都能引领世界的时尚潮流。是追随？是模仿？还是望“洋”兴叹？
													</p>
													<p
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														也许真正的时尚，并不一定需要太多投资。细碎的耳钉、淡淡的眼影，甚至只是微风里不经意飘起的裙摆——有了这些提亮心情的元素，就算精打细算，生活也能精致如花~
													</p>
												</div>
											</div>
											<div class="side">
												<div id="side-business">
													<h2>
														济南纳六网络科技有限公司
													</h2>
													<div style="margin-top: 10px;">
														此处填写位置信息
													</div>
													<div style="margin-top: 10px;">
														<a href="http://192.168.2.19/mt/济南纳六网络科技有限公司"
															target="_blank">济南纳六网络科技有限公司</a>
													</div>
												</div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="box-bottom"></div>
									</div>
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
												<a href="http://192.168.2.19/mt/team/ask.php?id=4">查看全部(0)</a>
												|
												<a href="http://192.168.2.19/mt/team/ask.php?id=4#post">我要提问</a>
											</p>
											<ul class="list">
											</ul>
											<div class="custom-service">
												<p class="im">
													<a id="service-msn-help" href="msnim:chat?contact="><img
															src="../images/button-c.gif" /> </a>&nbsp;
													<a
														href="tencent://message/?uin=&Site=%E7%BE%8E%E5%9B%A2&Menu=yes"><img
															src="../images/button-e.gif" alt="" />
													</a>
												</p>
												<p class="time">
													周一至周六 9:00-18:00
												</p>
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
												正在团购...
											</h2>
											<b>1、仅售5元！价值50元的金芙蓉汪氏弓射射箭馆射击体验（含弓箭20支），以有益身心的方式，感受古代弯弓射雕的豪迈！</b>
											<p>
												<a href="http://192.168.2.19/mt/team.php?id=2"><img
														src="../images/13011202.jpg" width="195" height="148"
														border="0" /> </a>
											</p>
											<p>
												<a href="http://192.168.2.19/mt/team.php?id=2">&raquo;&nbsp;点击查看本单详情</a>
											</p>
											<b>2、仅售48元！最高价值127元的食唐陕味双人套餐（食唐歪猪蹄2份/锅仔羊排2选1+香炒辣臊子+食唐凉皮+BIANGBIANG面2碗），另配陕西馍2个，垂涎陕味儿已良久，今儿个终于赶上啦！</b>
											<p>
												<a href="http://192.168.2.19/mt/team.php?id=1"><img
														src="../images/13011181.jpg" width="195" height="148"
														border="0" /> </a>
											</p>
											<p>
												<a href="http://192.168.2.19/mt/team.php?id=1">&raquo;&nbsp;点击查看本单详情</a>
											</p>
										</div>
									</div>
									<div class="sbox-bottom"></div>
								</div>
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
												<a href="http://192.168.2.19/mt/feedback/seller.php">请点这里</a>
											</p>
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
