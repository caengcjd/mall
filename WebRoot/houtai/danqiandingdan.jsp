<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script src="../images/index000.js" type="text/javascript"></script>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="../images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.19/mt/index.php" class="link"
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
						<li class="current">
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
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<!-- <li class="current">
									<a href="fukuanok.jsp">当期订单</a><span></span>
								</li> -->
								<li>
									<a href="fukuanok.jsp">付款订单</a><span></span>
								</li>
								<li>
									<a href="weifukuan.jsp">未付订单</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											当期订单
										</h2>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													ID
												</th>
												<th width="250">
													项目
												</th>
												<th width="180">
													用户
												</th>
												<th width="40">
													数量
												</th>
												<th width="50">
													单价
												</th>
												<th width="50">
													时间
												</th>
												<th width="50">
													操作
												</th>
											</tr>
											<c:forEach items="${dd.bll}" var="l">
											<tr class="alt" id="order-list-id-1">
												<td>
													${l.did}
												</td>
												<td>
													&nbsp;${l.dname} 
												</td>
												<td>${l.duser}</td>
												<td>
													1
												</td>
												<td>
													<span class="money">¥</span>${l.dmoney}
												</td>
												<td>
													${l.dtime}
												</td>
												<td>									
													<a href="../dddel.do?did=${l.did}" class="remove-record">删除</a>
												</td>
											</tr>
											</c:forEach>
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
									<a href="http://192.168.2.19/mt/subscribe.php?ename=jinan">邮件订阅</a>
								</li>
								<li>
									<a href="http://192.168.2.19/mt/feed.php?ename=jinan">RSS订阅</a>
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
									<a href="http://192.168.2.19/mt/feedback/suggest.php">意见反馈</a>
								</li>
								<li>
									<a href="http://192.168.2.19/mt/about/contact.php">联系方式</a>
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