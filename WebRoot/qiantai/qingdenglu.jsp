<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	  <jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<jsp:useBean id="question" class="dao.question.QuestionDaoImp" />
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团答疑
			仅售48元！最高价值127元的食唐陕味双人套餐（食唐歪猪蹄2份/锅仔羊排2选1+香炒辣臊子+食唐凉皮+BIANGBIANG面2碗），另配陕西馍2个，垂涎陕味儿已良久，今儿个终于赶上啦！
			| 美团 - 精品团购每一天 |济南购物|济南团购|济南打折</title>
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
		<script type="text/javascript">var LOGINUID= 0;</script>
		<script src="../images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">	
		function selectPlace(txt)
		{
			 var place = document.getElementById("tihuanduixiang");
			 var citys = document.getElementById("citys")
			 var citylist = document.getElementById("citylist")
			 var citylists = document.getElementById("citylists")
			 place.innerText=txt;
			 citys.innerText=txt;
			 citylist.innerText=txt;
			 citylists.innerText=txt;
			 placeLayer.style.display="none";
		}
	</script>
	</head>
	<body>
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
					<form action="http://192.168.2.197/mt/subscribe.php" method="post"
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
						<a class="sms" onclick=X.miscajax('sms', 'unsubscribe');;
>
							取消手机订阅</a> </span>
				</div>
				<ul class="nav cf">
					<li>
						<a href="index.jsp">今日团购</a>
					</li>
					<li>
						<a href="http://192.168.2.197/mt/team/index.php">往期团购</a>
					</li>
					<li>
						<a href="http://192.168.2.197/mt/help/tour.php">玩转美团</a>
					</li>
					<li>
						<a href="http://192.168.2.197/mt/forum/index.php">讨论区</a>
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
										<a href="http://localhost/mt/account/logout.php">${username}</a>
									</li>
									<li class="account">
										<a href="http://localhost/mt/order/index.php" id="myaccount"
											class="account">我的美团</a>
									</li>
									<li class="login">
										<a href="regedit.html">退出</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
					<div class="line "></div>
				</div>
			</div>
		</div>


		<div id="bdw" class="bdw">
			<div id="bd" class="cf">
				<div id="consult">
					<div class="consult-hd">
						<div id="deal-share">
							<div class="deal-share-top"><br /></div><br /><div id="deal-share-im-c">
								<div class="deal-share-im-b">
									<h3>
										复制下面的内容后通过 MSN 或 QQ 发送给好友：
									</h3>
									<p>
										<input id="share-copy-text" type="text"
											value="http://192.168.2.197/mt/team.php?id=1&r=0" size="30"
											class="f-input" tip="复制成功，请粘贴到你的MSN或QQ上推荐给您的好友" />
										<input id="share-copy-button" type="button" value="复制"
											class="formbutton" />
									</p>
								</div>
							</div>
						</div><br /></div>
					<div class="consult-bd">
						<div id="content">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											美团答疑
										</h2>
									</div>
									<div class="sect consult-list">
										<ul class="list">
											<c:forEach items="${question.allQ}" var="ques">
												<c:choose>
												<c:when test="${ques.answer != null}">
													<li id="ask-entry-2">
													<div class="item">
														<p class="user">
															<strong>${ques.user}</strong><span>3天前</span>
														</p>
														<div class="clear"></div>
														<p class="text">
															${ques.info}
														</p>
														<p class="reply">
															<strong style="color:red">管理员回复：</strong>${ques.answer}
														</p>
													</div>
												</li>
												</c:when>
												<c:otherwise>
												</c:otherwise>
												</c:choose>
											</c:forEach>
										</ul>
										<ul class="paginator">
											<li class="current">
												1
											</li>
										</ul>
									</div>

								</div>
								<div class="box-bottom"></div>
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
											<a href="http://192.168.2.197/mt/account/invite.php">&raquo;&nbsp;点击获取您的专用邀请链接</a>
										</p>
									</div>
								</div>
								<div class="sbox-bottom"></div>
							</div>
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


	</body>
</html>