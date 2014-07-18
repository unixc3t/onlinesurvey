<%@page import="alex.pojo.Ptyh"%>
<%@page import="alex.pojo.Cwhyh"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<li class="icn_tags"><a href="#"> 普通用户检索 </a></li>
		<li class="icn_tags"><a href="#"> 村委会检索 </a></li>
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

	<section id="main" class="column">
		<article class="module width_full" >
		<header><h3 class="tabs_involved">数据检索</h3>
		<ul class="tabs">
   			<li><a href="#tab1">普通村民用户</a></li>
    		<li><a href="#tab2">村委会用户</a></li>
		</ul>
		</header>

		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr>
					<th>问卷编号</th> 
    				<th>调查人姓名</th> 
    				<th>调查人身份</th> 
    				<th>问卷最后修改时间</th> 
    				<th>问卷操作</th> 
				</tr> 
			</thead> 
			<c:forEach items="${ptyhset}" var="ptyh">
			<tbody>
				<tr>
					<td>${ptyh.id}</td> 
    				<td>${ptyh.username}</td> 
    				<td>普通村民</td> 
    				<td>${ptyh.surveydate}</td>
    				<td>
    					<a href="selptyh?userid=${ptyh.id}"><img src="images/icn_search.png" border="0"/></a>
    					<a href="delptyh?userid=${ptyh.id}"><img src="images/icn_trash.png" border="0"/></a>
    				</td> 
				</tr>
			</tbody> 
			</c:forEach>
			</table>
			</div><!-- end of #tab1 -->
			
			<div id="tab2" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			
			<thead> 
				<tr>
					<th>问卷编号</th> 
    				<th>调查人姓名</th> 
    				<th>调查人身份</th> 
    				<th>问卷最后修改时间</th>
    				<th>问卷操作</th> 
				</tr> 
			</thead> 
			<c:forEach items="${cwhyhset}" var="cwhyh">
			<tbody> 
				<tr>
					<td>${cwhyh.id}</td> 
    				<td>${cwhyh.username}</td> 
    				<td>村委会用户</td> 
    				<td>${cwhyh.surveydate}</td>
    				<td>
    					<a href="selcwhyh?userid=${cwhyh.id}"><img src="images/icn_search.png" border="0"/></a>
    					<a href="delcwhyh?userid=${cwhyh.id}"><img src="images/icn_trash.png" border="0"/></a>
    				</td> 
				</tr>
			</tbody>
			</c:forEach> 
			</table>

			</div><!-- end of #tab2 -->
			
		</div><!-- end of .tab_container -->
		
		</article><!-- end of content manager article -->
	<div class="clear"></div>
	<div class="spacer"></div>
	</section>
</body>
</html>