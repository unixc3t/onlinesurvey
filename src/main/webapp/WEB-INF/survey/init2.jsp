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
		<a href="#">村委会用户主页</a>
	</h1>
	<h2 class="section_title">宜居乡村社区环境健康评估与质量提升技术</h2>
	<div class="btn_view_site">
		<a href="logout">离开</a>
	</div>
	</hgroup> </header>
	<!-- end of header bar -->

	<section id="secondary_bar">
	<div class="user">
		<p>您好，欢迎参加问卷调查</p>
	</div>
	<div class="breadcrumbs_container">
		<article class="breadcrumbs"> <a href="#">宜居乡村社区健康调查平台</a>
		<div class="breadcrumb_divider"></div>
		<a class="current">数据检索</a></article>
	</div>
	</section>
	<!-- end of secondary bar -->

	<aside id="sidebar" class="column"> <!-- 	<form class="quick_search">
		<input type="text" value="Quick Search"
			onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
	</form> -->
	<hr />
	<h3>一、基本情况</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#">1.村庄基本情况</a></li>
		<li class="icn_tags"><a href="#">2.人口情况</a></li>
		<li class="icn_tags"><a href="#">3.社会服务与基础设施</a></li>
	</ul>
	<h3>二、健康评估</h3>
	<ul class="toggle">
		<li class="icn_photo"><a href="#">1.人居环境</a></li>
		<li class="icn_photo"><a href="#">2.社会发展</a></li>
		<li class="icn_photo"><a href="#">3.生态资源</a></li>
		<li class="icn_photo"><a href="#">4.环境整治</a></li>
		<li class="icn_photo"><a href="#">5.安全防灾</a></li>
	</ul>
	<h3>三、生态资产</h3>
	<ul class="toggle">
		<li class="icn_view_users"><a href="#">1.生态资产</a></li>
	</ul>
	<h3>四、景观现状</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#">1.景观现状</a></li>
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

	<article class="module width_full"> <header>
	<h3>基本情况</h3>
	</header>
	<div class="module_content">
	
	
		<div class="clear"></div>
	</div>
	</article>
	
	<article class="module width_full"> <header>
	<h3>环境现状</h3>
	</header>
	<div class="module_content">
		<div class="clear"></div>
	</div>
	</article>
	
	<article class="module width_full"> <header>
	<h3>生态资产</h3>
	</header>
	<div class="module_content">
		<div class="clear"></div>
	</div>
	</article>
	
	<article class="module width_full"> <header>
	<h3>景观现状</h3>
	</header>
	<div class="module_content">
		<div class="clear"></div>
	</div>
	</article>
	
	<div class="clear"></div>
	<div class="spacer"></div>
	</section>
</body>
</html>