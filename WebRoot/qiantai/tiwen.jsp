<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8;charset=utf-8">
			<title>美团答疑
				仅售48元！最高价值127元的食唐陕味双人套餐（食唐歪猪蹄2份/锅仔羊排2选1+香炒辣臊子+食唐凉皮+BIANGBIANG面2碗），另配陕西馍2个，垂涎陕味儿已良久，今儿个终于赶上啦！
				| 美团 - 精品团购每一天 |济南购物|济南团购|济南打折</title>
			<meta name="description" content="精品团购每一天|长沙购物|长沙团购|长沙打折" />
			<meta name="keywords"
				content="美团, 长沙, 长沙美团，长沙购物，长沙团购，长沙打折，团购，打折，精品消费，购物指南，消费指南" />
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
			<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
				title="订阅更新" type="application/rss+xml" />
			<link rel="shortcut icon" href="../images/favicon0.ico" />
			<link rel="stylesheet" href="../images/index000.css" type="text/css"
				media="screen" charset="utf-8" />
			<script type="text/javascript">var WEB_ROOT = '/mt';</script>
			<script type="text/javascript">var LOGINUID= 1;</script>
			<script src="../images/index000.js" type="text/javascript"></script>
			<script type="text/javascript">
		function show(){
		var xx = document.getElementById("xx");
		var yy = document.getElementById("yy");
   		xx.style.display="block";
   		yy.style.display="none";
		}
	</script>
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
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">

			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://localhost/mt/index.php" class="link"><img
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
						<li>
							<a href="../all.do">讨论区</a>
						</li>
					</ul>
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
							<a href="http://localhost/mt/order/index.php">我的订单</a>
						</li>
						<li>
							<a href="http://localhost/mt/account/settings.php">帐户设置</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="consult">
						<div class="consult-hd">
							<div id="deal-share">
								<div class="deal-share-top">
									<br />
								</div>
								<br />
								<div id="deal-share-im-c">
									<div class="deal-share-im-b">
										<h3>
											复制下面的内容后通过 MSN 或 QQ 发送给好友：
										</h3>
										<p>
											<input id="share-copy-text" type="text"
												value="http://localhost/mt/team.php?id=1&r=1" size="30"
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
											<p class="intro">
												&nbsp;&nbsp;&nbsp;&nbsp;有问题请在此留言，我们会尽快为您解答
											</p>
										</div>
										<div class="sect consult-list">
											<ul class="list">
												<li id="ask-entry-1">

												</li>
											</ul>
											<ul class="paginator">
												<li class="current"></li>
											</ul>
										</div>
										<div class="head" id="post">
											<h2>
												我要提问
											</h2>
										</div>
										<div id="yy" class="sect consult-form" style="display: block">
											<form id="consult-add-form" method="post"
												action="../question.do">

												相关团购：
												<select name="dealid" id="related-deal-select"
													style="width: 345px;">
													<option value="-1">
														请选择团购项目
													</option>
													<option value="美梦成真：终结等待，无需排队！最新上市白色苹...">
														美梦成真：终结等待，无需排队！最新上市白色苹...
													</option>
													<option value="芙蓉区建湘南路噜啦啦卡通乐园畅玩">
														芙蓉区建湘南路噜啦啦卡通乐园畅玩
													</option>
													<option value="黄兴中路沁心港时尚饮品沁凉套餐">
														黄兴中路沁心港时尚饮品沁凉套餐
													</option>
													<option value="雨花区新建西路瓦匠工社马赛克DIY套餐">
														雨花区新建西路瓦匠工社马赛克DIY套餐
													</option>
													<option value="开福区湘江世纪城妙角士单人套餐">
														开福区湘江世纪城妙角士单人套餐
													</option>
													<option value="长沙生态动物园游览套票">
														长沙生态动物园游览套票
													</option>
													<option value="LOTU'S CAFE6寸蛋糕">
														LOTU'S CAFE6寸蛋糕
													</option>
													<option value="美梦成真：完美护肤，0元即可赢取雅诗兰黛经典...">
														美梦成真：完美护肤，0元即可赢取雅诗兰黛经典...
													</option>
													<option value="中威电气石汗蒸养生馆汗蒸体验1次">
														中威电气石汗蒸养生馆汗蒸体验1次
													</option>
													<option value="太平街92号加茶站温情夏日特色果汁饮品套餐">
														太平街92号加茶站温情夏日特色果汁饮品套餐
													</option>
													<option value="雨花亭云鼎大厦乔登美语儿童全美语体验课">
														雨花亭云鼎大厦乔登美语儿童全美语体验课
													</option>
													<option value="聚美优品化妆品团购网站优惠券1张">
														聚美优品化妆品团购网站优惠券1张
													</option>
													<option value="《网友世界》杂志季度订阅（6本）">
														《网友世界》杂志季度订阅（6本）
													</option>
													<option value="语文新课标分级阅读丛书（小学版/初中版2选1）">
														语文新课标分级阅读丛书（小学版/初中版2选1）
													</option>
													<option value="科大讯飞早教智能玩具">
														科大讯飞早教智能玩具
													</option>
													<option value="美国硅谷iHealth定制全球首款MINI炫彩手腕式电...">
														美国硅谷iHealth定制全球首款MINI炫彩手腕式电...
													</option>
													<option value="阳光旅行网40元酒店预订返现券1张">
														阳光旅行网40元酒店预订返现券1张
													</option>
													<option value="其它">
														其它
													</option>
												</select>
												<br/>
												<br/>


												<input type="hidden" value="${username}" name="user" />
												<input type="hidden" name="id" value="1"
													style="display: none;" />
												<textarea class="f-textarea" cols="60" rows="5" name="info"
													id="consult-content"></textarea>
												<p class="commit">
													<input type="hidden" name="team_id" value="1" />
													<input type="submit" value="好了，提交" name="commit"
														class="formbutton" onclick="show()" />
												</p>
											</form>
										</div>
										<h1>
											&nbsp;
										</h1>
										<h1>
											&nbsp;
										</h1>
										<div id="xx" style="display: none">
											<p>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的问题已成功提交，客服MM很快就会回复的，稍等一会儿再来看吧。
											</p>
											<h1>
												&nbsp;
											</h1>
											<p>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="index.jsp">返回本团购</a>，或
												<a id="xxx" href="tiwen.jsp">还有其他问题？</a>
											</p>
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
												<a href="http://localhost/mt/account/invite.php">&raquo;&nbsp;点击获取您的专用邀请链接</a>
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
						<a href="http://localhost/mt/feedback/suggest.php">意见反馈</a>
					</p>

					<ul class="cf">

						<li class="col">

							<h3>
								用户帮助
							</h3>

							<ul class="sub-list">

								<li>
									<a href="http://localhost/mt/help/tour.php">玩转美团</a>
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
									<a href="http://localhost/mt/help/link.php">友情链接</a>
								</li>

								<li>
									<a href="http://localhost/mt/biz/index.php">商户后台</a>
								</li>

								<li>
									<a href="http://localhost/mt/manage/index.php">管理美团</a>
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
