<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<jsp:useBean id="use" class="dao.users.UsersDaoImp"></jsp:useBean>
		<meta http-equiv=content-type content="text/html; charset=UTF-8" />
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">
	var WEB_ROOT = '/mt';
</script>
		<script src="../images/index000.js" type="text/javascript">
	
</script>

	</head>

	<body class="newbie">
		<div id="pagemasker">
		</div>
		<div id="dialog">
		</div>
		<div id="doc">
			<script type="text/javascript" src="../images/xheditor.js">
	
</script>
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
						<div id="guides-city-change" class="change">
						</div>
					</div>
					<ul class="nav cf">
						<li class="current">
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
						<li>
							<a href="cityList.jsp">类别</a>
						</li>

					</ul>
				</div>
			</div>
			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="money">
						<div class="dashboard" id="dashboard">
							<ul>
								<li>
									<a href="index.jsp">首页</a>
									<span></span>
								</li>
								<li>
									<a href="tuangoudayi.jsp">团购答疑</a>
									<span></span>
								</li>
								<li>
									<a href="youqinglianjie.jsp">友情链接</a>
									<span></span>
								</li>
								<li class="current">
									<a href="caiwujilu.jsp">财务记录</a>
									<span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top">
								</div>
								<div class="box-content"><br /><div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="200">
													Email/用户名
												</th>
												<th width="100">
													动作
												</th>
												<th width="160">
													金额
												</th>
												<th width="200">
													操作员
												</th>
												<th width="200">
													线下充值时间
												</th>
											</tr>
											<c:forEach items="${use.allUser}" var="us">
											<tr class="alt">
												<td nowrap>
													${us.email}
													<br />
													${us.username}
												</td>
												<td nowrap>
													线下充值
												</td>
												<td nowrap>
													<span class="money">¥</span>${us.money}
												</td>
												<td nowrap>
													${us.email}
													<br />
													${us.username}
												</td>
												<td nowrap>
													${us.date}
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
								<div class="box-bottom">
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
						<a href="http://192.168.2.49/mt/feedback/suggest.php">意见反馈</a>
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
	</body>
</html>