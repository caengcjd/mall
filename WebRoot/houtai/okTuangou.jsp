<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=UTF-8">
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
						<a href="http://192.168.2.49/mt/index.php" class="link"
							target="_blank"><img src="../images/logo0000.gif" />
						</a>
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
						<li class="current">
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
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li>
									<a href="dangqian.jsp">当前团购</a><span></span>
								</li>
								<li class="current">
									<a href="">成功团购</a><span></span>
								</li>
								<li>
									<a href="failTuangou.jsp">失败团购</a><span></span>
								</li>
								<li>
									<a href="newTuangou.jsp">新建团购</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											成功团购
										</h2>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													ID
												</th>
												<th width="400">
													团购项目
												</th>
												<th width="80" nowrap>
													类别
												</th>
												<th width="100">
													日期
												</th>
												<th width="50">
													成交
												</th>
												<th width="60" nowrap>
													团购价
												</th>
												<th width="140">
													操作
												</th>
											</tr>
											<tr class="alt" id="team-list-id-3">
												<td>
													<a>3</a>
												</td>
												<td>
													<a class="deal-title"
														href="http://192.168.2.49/mt/team.php?id=3"
														target="_blank">美梦成真：真现货，不忽悠！0元参与第一时间赢取苹果最新iPad2平板电脑2台，绝对现货！美国直送！每邀请1个新用户参加多1个抽奖号码，中奖几率翻倍！</a>
												</td>
												<td nowrap>
													<br />
												</td>
												<td nowrap>
													2011-03-26
													<br />
													2011-03-28
												</td>
												<td nowrap>
													15/10
												</td>
												<td nowrap>
													<span class="money">¥</span>1
													<br />
													<span class="money">¥</span>4888
												</td>
												<td class="op" nowrap>
													<a
														href="http://192.168.2.49/mt/ajax/manage.php?action=teamdetail&id=3"
														class="ajaxlink">详情</a>｜
													<a href="http://192.168.2.49/mt/manage/team/edit.php?id=3">编辑</a>｜
													<a
														href="http://192.168.2.49/mt/ajax/manage.php?action=teamremove&id=3"
														class="ajaxlink" ask="确定删除本项目吗？">删除</a>｜
													<a href="http://192.168.2.49/mt/manage/team/down.php?id=3"
														target="_blank">下载</a>
												</td>
											</tr>
											<tr>
												<td colspan="7">
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
						<a href="http://192.168.2.49/mt/feedback/suggest.php">意见反馈</a>
					</p>

					<ul class="cf">

						<li class="col">

							<h3>
								用户帮助
							</h3>

							<ul class="sub-list">

								<li>
									<a href="http://192.168.2.49/mt/help/tour.php">玩转美团</a>
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
										src="../images/logo-foo.gif" />
								</a>

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
