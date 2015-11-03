<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8" />
		<title>美团 - 商户后台</title>
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
						<a href="http://localhost/mt/index.php" class="link"
							target="_blank"><img src="../images/logo0000.gif" /> </a>
					</div>
					<div class="guides">
						<div class="city">
							<h2>
								商户后台
							</h2>
						</div>
					</div>
					<ul class="nav cf">
						<li class="current">
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="http://localhost/mt/biz/settings.php">商户资料</a>
						</li>
						<li>
							<a href="http://localhost/mt/biz/coupon.php">优惠券列表</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="biz">
						<div id="content" class="biz">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											商家登录
										</h2>
									</div>
									<div class="sect">
										<form method="post" action="../shdl.do" class="validator">
											<div class="field">
												<label for="biz-login">
													登录名
												</label>
												<input type="text" size="30" name="name" class="f-input"
													datatype="require" require="true" />
											</div>
											<div class="field">
												<label for="biz-password">
													密码
												</label>
												<input type="password" size="30" name="password"
													class="f-input" datatype="require" require="true" />
											</div>
											<div class="act">
												<input type="submit" value="登录" name="commit"
													class="formbutton" />
												&nbsp;&nbsp;&nbsp;
												<a href="xjsh.jsp">新建商户</a>
											</div>
										</form>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
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
									<a href="youqinglianjie.jsp">友情链接</a>
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
										src="../images/logo-foo.gif" /> </a>
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
