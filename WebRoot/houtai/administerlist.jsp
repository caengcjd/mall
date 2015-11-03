<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<jsp:useBean id="use" class="dao.users.UsersDaoImp"></jsp:useBean>
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script type="text/javascript">
	var WEB_ROOT = '/mt';
</script>
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
						<a href="#" class="link"
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
						<li>
							<a href="danqiandingdan.jsp">订单</a>
						</li>
						<li class="current">
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
									<a href="userlist.jsp">用户列表</a><span></span>
								</li>
								<li class="current">
									<a href="">管理员列表</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											管理员列表
										</h2>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="50">
													ID
												</th>
												<th width="200">
													Email
												</th>
												<th width="100" nowrap>
													姓名
												</th>
												<th width="200">
													注册时间
												</th>
												<th width="100">
													手机号码
												</th>
												<th width="160">
													操作
												</th>
											</tr>
											<c:forEach items="${use.allUser}" var="us">
												<c:choose>
													<c:when test="${us.administer == 'y'}">
														<tr class="alt" id="team-list-id-1">
															<td>
																${us.uid}
															</td>
															<td>
																${us.email}
															</td>
															<td>
																${us.username}
															</td>
															<td>
																${us.date}
															</td>
															<td>
																${us.mobile}
															</td>
															<td class="op">
																<a href="../bjuser.do?id=${us.uid}">编辑</a>
															</td>
														</tr>
													</c:when>
												</c:choose>
											</c:forEach>
											<tr>
												<td colspan="6">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
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
						<a href="#">意见反馈</a>
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
									<a href="#">常见问题</a>
								</li>
								<li>
									<a href="#">什么是美团</a>
								</li>
								<li>
									<a href="#">开发API</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								获取更新
							</h3>
							<ul class="sub-list">
								<li>
									<a href="#">邮件订阅</a>
								</li>
								<li>
									<a href="#">RSS订阅</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								合作与联系
							</h3>
							<ul class="sub-list">
								<li>
									<a href="#">商务合作</a>
								</li>
								<li>
									<a href="#">意见反馈</a>
								</li>
								<li>
									<a href="#">联系方式</a>
								</li>
								<li>
									<a href="#">管理美团</a>
								</li>
							</ul>
						</li>
						<li class="col">
							<h3>
								公司信息
							</h3>
							<ul class="sub-list">
								<li>
									<a href="#">关于美团</a>
								</li>
								<li>
									<a href="#">工作机会</a>
								</li>
								<li>
									<a href="#">用户协议</a>
								</li>
								<li>
									<a href="#">隐私声明</a>
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
							<a href="#">使用美团前必读</a>&nbsp;
							<a href="#" target="_blank"></a>&nbsp;Powered
							by
							<a href="http://tuan.now6.cn/" target="_blank">tuan.now6.cn</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>