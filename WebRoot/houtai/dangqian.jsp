<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<jsp:useBean id="dq" class="dao.tuangou.NewCreateImp" />
		<jsp:useBean id="xq" class="dao.tuangou.NewCreateImp" />
		<meta http-equiv=content-type content="text/html; charset=UTF-8">
		<title>美团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<style>
body,h2 {
	margin: 0;
	padding: 0;
}

#DialogDiv TABLE {
	border-collapse: collapse;
}

#BgDiv {
	background-color: #e3e3e3;
	position: absolute;
	z-index: 99;
	left: 0;
	top: 0;
	display: none;
	width: 100%;
	height: 1000px;
	opacity: 0.5;
	filter: alpha(opacity =                                     50);
	-moz-opacity: 0.5;
}

#DialogDiv {
	position: absolute;
	width: 400px;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -100px;
	height: auto;
	z-index: 100;
	background-color: #99CCCC;
	border: 1px #8FA4F5 solid;
	padding: 1px;
}

#DialogDiv h2 {
	height: 25px;
	font-size: 15px;
	background-color: #8FA4F5;
	position: relative;
	padding-left: 10px;
	line-height: 25px;
}

#DialogDiv h2 a {
	position: absolute;
	right: 5px;
	font-size: 12px;
	color: #000000
}
</style>

		<link rel="shortcut icon" href="../images/favicon0.ico" />
		<link rel="stylesheet" href="../images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
		<script src="../images/index000.js" type="text/javascript"></script>
		<script src="jquery1.4.js" type="text/javascript"></script>
		<script type="text/javascript">
		function closeMe(){
		var link = document.getElementById("DialogDiv");
			link.style.display="none";
		}
		function showMe(a,b,c,d,e,f,g,h){
		var link = document.getElementById("DialogDiv");
			link.style.display="block";
			$("#a").text(a);
			$("#b").text(b);
			$("#c").text(c);
			$("#d").text(d);
			$("#e").text(e);
			$("#f").text(f);
			$("#g").text(g);
			$("#h").text(h);
		}
	</script>

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
								<li class="current">
									<a href="dangqian.jsp">当前团购</a><span></span>
								</li>
								<li>
									<a href="okTuangou.jsp">成功团购</a><span></span>
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
											当前团购
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
													城市
												</th>
												<th width="60" nowrap>
													团购价
												</th>
												<th width="140">
													操作
												</th>
											</tr>
											<c:forEach items="${dq.dangQianInfo}" var="d">
												<tr class="alt" id="team-list-id-1">
													<td>
														<a>${d.fid }</a>
													</td>
													<td>
														<a class="deal-title"
															href="http://192.168.2.49/mt/team.php?id=1"
															target="_blank">${d.introduce}</a>
													</td>
													<td nowrap>
														<br />
														${d.category}
													</td>
													<td nowrap>
														${d.begintime}
														<br />
														${d.endtime}
													</td>
													<td nowrap>
														${d.city}
													</td>

													<td nowrap>
														<span class="money">¥</span>${d.tgprice }
													</td>
													<td class="op" nowrap>
														<a
															onclick="showMe('${d.introduce }','${d.category }','${d.begintime }','${d.endtime }',${d.bignum },${d.smallnum },'${d.tgprice }','${d.scprice }')">详情</a>｜
														<a href="../bj.do?fid=${d.fid}">编辑</a>｜
														<a href="../del.do?fid=${d.fid}" class="remove-record">删除</a>
													</td>
												</tr>
											</c:forEach>
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

		<div id="DialogDiv" style="display: none">
			<h2 id="bianji">
				团购详情
				<a href="javascript: closeMe( )">关闭</a>
			</h2>
			<table width="400">
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45">
						项目名称：
					</td>
					<td id="a" colspan="2" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45" style="font-family: 华文行楷; font-size: 21">
						类&nbsp;&nbsp;&nbsp;&nbsp;别：
					</td>
					<td id="b" colspan="2" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45" style="font-family: 华文行楷; font-size: 21">
						项目时间：
					</td>
					<td height="45">
						开始：
					</td>
					<td id="c" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						截至：
					</td>
					<td id="d" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45" style="font-family: 华文行楷; font-size: 21">
						限购数量：
					</td>
					<td height="45">
						最大：
					</td>
					<td id="e" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						最小:
					</td>
					<td id="f" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45">
						项目价格：
					</td>
					<td height="45">
						团购价:
					</td>
					<td id="g" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: 华文行楷; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						市场价：
					</td>
					<td id="h" height="45" style="color: 99ff99"></td>
				</tr>
			</table>
		</div>
	</body>

</html>