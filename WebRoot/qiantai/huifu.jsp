<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>1111 讨论区 | 美团 - 精品团购每一天 |长沙购物|长沙团购|长沙打折</title>
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
			function showme(){
				sysmsgcen.style.display="block";
			}
	</script>
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
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								取消手机订阅</a>
						</span>
					</div>
					<ul class="nav cf">
						<li>
							<a href="http://192.168.2.197/mt/index.php">今日团购</a>
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
						<div class="line islogin"></div>
					</div>
					<ul id="myaccount-menu">
						<li>
							<a href="http://192.168.2.197/mt/order/index.php">我的订单</a>
						</li>
						<li>
							<a href="http://192.168.2.197/mt/coupon/index.php">我的优惠券</a>
						</li>
						<li>
							<a href="http://192.168.2.197/mt/account/settings.php">帐户设置</a>
						</li>
					</ul>
				</div>
			</div>

			<div class="sysmsgw" id="sysmsgcen" style="display: none">
				<div class="sysmsg">
					<p>
						删除帖子成功
					</p>
					<span class="close">关闭</span>
				</div>
			</div>

			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="forum">
						<div class="dashboard" id="dashboard">
							<ul>
								<li>
									<a href="../all.do">所有</a><span></span>
								</li>
								<li>
									<a href="../jinan.do">长沙讨论区</a><span></span>
								</li>
								<li>
									<a href="../gonggong.do">公共讨论区</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											${hfform.stopic }
										</h2>
									</div>
									<div class="sect">
										<table id="replies-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<td width="48" valign="top">
													<div class="avatar">
														<img src="../images/user-no-.gif" width="48" height="48" />
													</div>
												</td>
												<td width="660">
													<div class="author">
														<span style="float: right;">${hfform.stime}&nbsp;<a
															href="http://192.168.2.197/mt/ajax/topic.php?action=topicremove&id=1"
															class="ajaxlink" ask="确定删除本话题吗？" >－删除</a>
														</span><b>${hfform.tuser}</b>
														<div class="clear"></div>
													</div>
													<div class="topic-content">
														${hfform.sinfo }
													</div>
												</td>
											</tr>
											<c:if test="${hlist!=null}">
												<c:forEach items="${hlist}" var="h">
													<c:if test="${h.hfid==hfform.tid}">
														<tr>
															<td width="48" valign="top">
																<div class="avatar">
																	<img src="../images/user-no-.gif" width="48"
																		height="48" />
																</div>
															</td>
															<td width="660">
																<div class="author">
																	<span style="float: right;">${h.htime }&nbsp;<a
																		href="http://192.168.2.197/mt/ajax/topic.php?action=topicremove&id=1"
																		class="ajaxlink" ask="确定删除本话题吗？" onclick="closeme()">－删除</a>
																	</span><b>${h.huser}</b>
																	<div class="clear"></div>
																</div>
																<div class="topic-content">
																	${h.hinfo }
																</div>
														</tr>
													</c:if>
												</c:forEach>
											</c:if>

											<tr>
												<td colspan="2">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
												</td>
											</tr>
										</table>
									</div>
									<div class="head" id="reply">
										<h2>
											我要回复
										</h2>
									</div>
									<div class="sect consult-form">
										<form id="forum-reply-form" method="post"
											action="../huifu.do?hid=${hfform.tid }&&tid=${hfform.tid }"
											class="validator">
											<input type="hidden" name="parent_id" value="1" />
											<textarea style="width: 480px; height: 240px;" name="hinfo"
												id="forum-new-content" class="f-textarea" require="true"
												datatype="require"></textarea>
											<p class="commit">
												<input type="submit" value="发布" name="commit"
													id="leader-submit" class="formbutton" />
											</p>
										</form>
										<div class="clear"></div>
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
										action="http://192.168.2.197/mt/subscribe.php">
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
										src="../images/logo-foo.gif" />
								</a>

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