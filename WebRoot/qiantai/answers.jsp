<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head> 
	    <jsp:useBean id="city" class="dao.city.CityDaoImp" />
		<meta http-equiv=content-type content="text/html; charset=UTF-8" />
			<title>my ������ | ���� - ��Ʒ�Ź�ÿһ�� |��ɳ����|��ɳ�Ź�|��ɳ����</title>
			<meta name="description" content="��Ʒ�Ź�ÿһ��|��ɳ����|��ɳ�Ź�|��ɳ����" />
			<meta name="keywords"
				content="����, ��ɳ, ��ɳ���ţ���ɳ�����ɳ�Ź�����ɳ���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
			<link href="http://192.168.2.49/mt/feed.php?ename=jinan"
				rel="alternate" title="���ĸ���" type="application/rss+xml" />
			<link rel="shortcut icon" href="../images/favicon0.ico" />
			<link rel="stylesheet" href="../images/index000.css" type="text/css"
				media="screen" charset="utf-8" />
			<script type="text/javascript">var WEB_ROOT = '/mt';</script>
			<script type="text/javascript">var LOGINUID= 1;</script>
			<script src="../images/index000.js" type="text/javascript"></script>
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
						<a href="http://192.168.2.49/mt/index.php" class="link">c<img
								src="../images/logo0000.gif" /> </a>
					</div>
					<div class="guides">
						<div class="city">
						   <h2 id="tihuanduixiang">
								��ɳ
							</h2>
						</div>
						<div id="guides-city-change" class="change">
							�л�����
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
						<form action="http://192.168.2.49/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪����ɳ������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;
							<a class="sms" onclick=X.miscajax('sms', 'unsubscribe');;
>&raquo;
								ȡ���ֻ�����</a> </span>
					</div>
					<ul class="nav cf">
						<li>
							<a href="index.jsp">�����Ź�</a>
						</li>
						<li>
							<a href="wqtg.jsp">�����Ź�</a>
						</li>
						<li>
							<a href="wzmt.jsp">��ת����</a>
						</li>
						<li>
							<a href="all.jsp">������</a>
						</li>
					</ul>
					<div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>
					<div class="logins">
						<ul id="account">
							<c:choose>
								<c:when test="${username == null}">
									<li class="login">
										<a href="regedit.html">ע��</a>
									</li>
									<li class="login">
										<a href="login.html">��¼</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="logout">
										<a href="http://localhost/mt/account/logout.php">${username}</a>
									</li>
									<li class="account">
										<a href="alldindang.jsp" id="myaccount"
											class="account">�ҵ�����</a>
									</li>
									<li class="login">
										<a href="regedit.html">�˳�</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
						<div class="line islogin"></div>
					</div>
					<ul id="myaccount-menu">
						<li>
							<a href="all.jsp">�ҵĶ���</a>
						</li>
						<li>
							<a href="http://192.168.2.49/mt/coupon/index.php">�ҵ��Ż�ȯ</a>
						</li>
						<li>
							<a href="http://192.168.2.49/mt/account/settings.php">�ʻ�����</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="forum">
						<div class="dashboard" id="dashboard">
							<ul>
								<li>
									<a href="../all.do">����</a><span></span>
								</li>
								<li>
									<a href="../jinan.do">��ɳ������</a><span></span>
								</li>
								<li>
									<a href="../gonggong.do">����������</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											${tform.stopic }
										</h2>
										<ul class="filter"
											style="position: absolutely; bottom: 0px; clear: both; float: none;">
											<li>
												<a href="">���ظ�</a>
											</li>
											<li>
												<a
													href="http://192.168.2.49/mt/ajax/topic.php?action=topicremove&id=3"
													class="ajaxlink" ask="ȷ��ɾ����������">��ɾ��</a>
											</li>
											<li>
												<a
													href="http://192.168.2.49/mt/ajax/topic.php?action=topichead&id=3"
													class="ajaxlink">���ö�</a>
											</li>
										</ul>
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

														<span style="float: right;">���ڸղ�&nbsp;<a
															href="http://192.168.2.49/mt/ajax/topic.php?action=topicremove&id=3"
															class="ajaxlink" ask="ȷ��ɾ����������">��ɾ��</a> </span><b>${tform.tuser}</b>
														<div class="clear"></div>
													</div>
													<div class="topic-content">
														${tform.sinfo }
													</div>

												</td>
											</tr>
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
									action="http://192.168.2.49/mt/subscribe.php">
									<table class="address">
										<tr>
											<td>
												<input type="text" name="email" class="f-text"
													id="deal-subscribe-form-email" xtip="���������Email..."
													value="" />
											</td>
											<td>
												<input type="hidden" name="city_id" value="4" />
												<input type="image" src="../images/button-s.gif" value="����" />
											</td>
										</tr>
									</table>
								</form>
								<p class="text">
									ÿ�춼���¾�ϲ��
									<br />
									���ǻ��ʼ�֪ͨ����
									<br />
									<span class="required">*</span> �˷��������ʱȡ��
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
					<a href="http://192.168.2.49/mt/feedback/suggest.php">�������</a>
				</p>
				<ul class="cf">
					<li class="col">
						<h3>
							�û�����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://192.168.2.49/mt/help/tour.php">��ת����</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/help/faqs.php">��������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/help/zuitu.php">ʲô������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/help/api.php">����API</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��ȡ����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://192.168.2.49/mt/subscribe.php?ename=jinan">�ʼ�����</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/feed.php?ename=jinan">RSS����</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��������ϵ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://192.168.2.49/mt/feedback/seller.php">�������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/help/link.php">��������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/biz/index.php">�̻���̨</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/manage/index.php">��������</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��˾��Ϣ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="http://192.168.2.49/mt/about/us.php">��������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/about/job.php">��������</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/about/terms.php">�û�Э��</a>
							</li>
							<li>
								<a href="http://192.168.2.49/mt/about/privacy.php">��˽����</a>
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
						<span>2010</span>&nbsp;����(now6.cn)��Ȩ����&nbsp;
						<a href="http://192.168.2.49/mt/about/terms.php">ʹ������ǰ�ض�</a>&nbsp;
						<a href="http://www.miibeian.gov.cn/" target="_blank"></a>&nbsp;Powered
						by
						<a href="http://tuan.now6.cn/" target="_blank">tuan.now6.cn</a>
					</p>
				</div>
			</div>
		</div>
	</body>
</html>
