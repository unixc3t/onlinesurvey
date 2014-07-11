<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<title>宜居乡村社区健康调查平台</title>

<script type="text/javascript">
	$(document).ready(function() {
		$(".tablesorter").tablesorter();
	});
	$(document).ready(function() {

		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content

		//On Click Event
		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content

			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});

	});
</script>
<script type="text/javascript">
	$(function() {
		$('.column').equalHeight();
	});
</script>

</head>
<body>
	<header id="header"> <hgroup>
	<h1 class="site_title">
		<a href="index.html">宜居乡村社区健康调查平台</a>
	</h1>
	<h2 class="section_title"></h2>
	<div class="btn_view_site">
		<a href="logout">退出登陆</a>
	</div>
	</hgroup> </header>
	<!-- end of header bar -->

	<section id="secondary_bar">
	<div class="user">
		<p>您好，${user.username}</p>
	</div>
	<div class="breadcrumbs_container">
		<article class="breadcrumbs"> <a href="index.html">宜居乡村社区健康调查平台</a>
		<div class="breadcrumb_divider"></div>
		<a class="current">数据检索</a></article>
	</div>
	</section>
	<!-- end of secondary bar -->

	<aside id="sidebar" class="column">
	<form class="quick_search">
		<input type="text" value="Quick Search"
			onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
	</form>
	<hr />
	<h3>数据展示</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="ConvertPort?senid=1">节点1</a></li>
		<li class="icn_tags"><a href="ConvertPort?senid=2">节点2</a></li>
		<li class="icn_tags"><a href="ConvertPort?senid=3">节点3</a></li>
		<li class="icn_tags"><a href="ConvertPort?senid=4">节点4</a></li>
	</ul>
	<h3>数据分析</h3>
	<ul class="toggle">
		<li class="icn_photo"><a href="#">历史数据</a></li>
	</ul>
	<h3>数据预测</h3>
	<ul class="toggle">
		<li class="icn_view_users"><a href="#">未来三天</a></li>
		<li class="icn_view_users"><a href="#">未来七天</a></li>
	</ul>
	<h3>节点状态</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#">节点1</a></li>
		<li class="icn_tags"><a href="#">节点2</a></li>
		<li class="icn_tags"><a href="#">节点3</a></li>
		<li class="icn_tags"><a href="#">节点4</a></li>
	</ul>
	<h3>管理功能</h3>
	<ul class="toggle">
		<li class="icn_security"><a href="#">修改密码</a></li>
		<li class="icn_jump_back"><a href="logout">退出登陆</a></li>
	</ul>

	<footer>
	<hr />
	<p>
		<strong>Copyright &copy; 2014 宜居乡村社区健康调查平台</strong>
	</p>
	<p>
		Design by <a href="#">Alex</a>
	</p>
	</footer> </aside>
	<!-- end of sidebar -->

	<section id="main" class="column">
	<h4 class="alert_info">欢迎使用宜居乡村社区健康调查平台</h4>
	<article class="module width_full"> </article><!-- end of stats article -->
	<div class="clear"></div>
	<div class="spacer"></div>
	</section>
</body>
</html>