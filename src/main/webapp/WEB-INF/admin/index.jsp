<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<!DOCTYPE 
    html
    PUBLIC
    "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
		<a href="#"> 管理员用户主页 </a>
	</h1>
	<h2 class="section_title">宜居乡村社区环境健康评估与质量提升技术</h2>
	<div class="btn_view_site">
		<a href="logout"> 退出登录 </a>
	</div>
	</hgroup> </header>
	<!-- end of header bar -->
	<section id="secondary_bar">
	<div class="user">
		<p>您好，管理员 ${username} (女士/先生)</p>
	</div>
	<div class="breadcrumbs_container">
		<article class="breadcrumbs"> <a href="#"> 宜居乡村社区健康调查平台 </a>
		<div class="breadcrumb_divider"></div>
		<a class="current"> 数据检索 </a> </article>
	</div>
	</section>
	<!-- end of secondary bar -->

	<aside id="sidebar" class="column">
	<hr />
	<h3>基本检索</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="gptyh" target="main"> 普通用户检索 </a></li>
		<li class="icn_tags"><a href="gcwyh" target="main"> 村委会检索 </a></li>
	</ul>
	<h3>敬请期待</h3>
	<ul class="toggle">
	</ul>

	<footer>
	<hr />
	<p>
		<strong> Copyright &copy; 2014 宜居乡村社区健康调查平台 </strong>
	</p>
	<p>
		Design by <a href="#"> Alex </a>
	</p>
	</footer> </aside>
	<!-- end of sidebar -->

	<section id="main" class="column">
	<h4 class="alert_info">请选择检索类型</h4>
		<a name="ptyh"/>
		<article class="module width_full"> <header> 
			<iframe id="main" name="main" frameborder="0" src=""></iframe>
			<div class="clear"></div>

		</article>
	<div class="clear"></div>
	<div class="spacer"></div>
	</section>
</body>
</html>