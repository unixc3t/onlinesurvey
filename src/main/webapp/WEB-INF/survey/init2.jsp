<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" /> -->
<title>宜居乡村社区环境健康调查平台</title>

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
		<article class="breadcrumbs"> <a href="#">宜居乡村社区环境健康调查平台</a>
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
	<h3>一、问卷登记</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#wjdj">1.调查人登记</a></li>
	</ul>
	<h3>二、基本情况</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#czjbqk">1.村庄基本情况</a></li>
		<li class="icn_tags"><a href="#rkqk">2.人口情况</a></li>
		<li class="icn_tags"><a href="#shfw">3.社会服务与基础设施</a></li>
	</ul>
	<h3>三、健康评估</h3>
	<ul class="toggle">
		<li class="icn_photo"><a href="#">1.人居环境</a></li>
		<li class="icn_photo"><a href="#">2.社会发展</a></li>
		<li class="icn_photo"><a href="#">3.生态资源</a></li>
		<li class="icn_photo"><a href="#">4.环境整治</a></li>
		<li class="icn_photo"><a href="#">5.安全防灾</a></li>
	</ul>
	<h3>四、生态资产</h3>
	<ul class="toggle">
		<li class="icn_view_users"><a href="#stzc">1.生态资产</a></li>
	</ul>
	<h3>五、景观现状</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#jgxz">1.景观现状</a></li>
	</ul>

	<footer>
	<hr />
	<p>
		<strong>Copyright &copy; 2014宜居乡村社区环境健康调查平台</strong>
	</p>
	<p>
		Design by <a href="#">Alex</a>
	</p>
	</footer> </aside>
	<!-- end of sidebar -->

	<section id="main" class="column">
	<h4 class="alert_info">欢迎使用宜居乡村社区环境健康调查平台</h4>
	<form target="hideWin" action="cwhyh" method="post" enctype="multipart/form-data">
	<a name="wjdj" />
	<article class="module width_full"> <header>
	<h3>问卷登记</h3>
	</header>
	<div class="module_content">
	<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
		<label>调查人（必填）</label> <input type="text" name="username" id="username" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>省（市）</label> <input type="text" name="sheng" id="sheng" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>市（县）</label> <input type="text" name="shi" id="shi" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>乡（镇）</label> <input type="text" name="xiang" id="xiang" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>村</label> <input type="text" name="cun" id="cun" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>经纬度</label> <input type="text" name="jingwei" id="jingwei" style="width: 85%;" />
	</fieldset>
	<div class="clear"></div>
	</div>
	</article>

	<article class="module width_full"> <header>
	<h3>基本情况</h3>
	</header>
	<div class="module_content">
		<a name="czjbqk" />
		<article class="module width_full">
		<header>
		<h3>村庄基本情况</h3>
		</header>
		<div class="module_content">
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>村庄村域面积（平方公里）</legend> <input type="text" name="czcymj" id="czcymj" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 15%; float: left; margin-right: 1%;">
				<legend>现状建设用地面积（平方公里）</legend> <input type="text" name="xzjsyd" id="xzjsyd" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 15%; float: left; margin-right: 1%;">
				<legend>规划建设用地面积（平方公里）</legend> <input type="text" name="ghjsyd" id="ghjsyd" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>庭院用地面积（公顷/亩）</legend> <input type="text" name="tyydmj" id="tyydmj" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>宅基地面积（公顷/亩）</legend> <input type="text" name="zjdmj" id="zjdmj" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 13%; float: left; margin-right: 1%;">
				<legend>全村经济收入（万元）</legend> <input type="text" name="qcjjsr" id="qcjjsr" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>人均纯收入（元）</legend> <input type="text" name="rjcsr" id="rjcsr" style="width: 85%;"/>
			</fieldset>
			<fieldset style="width: 20%; float: left; margin-right: 1%;">
				<legend>是否编制村庄规划？</legend>
				<select name="bzczgh" style="width: 85%;">
					<option value="1">是</option>
					<option value="2">否</option>
				</select>
			</fieldset>
			<div class="clear"></div>
		</div>
		</article>

<a name="rkqk" />
		<article class="module width_full">
		<header>
		<h3>人口情况</h3>
		</header>
		<div class="module_content">
			
	<fieldset style="width: 15%; float: left;  margin-right: 1%;">
		<label>总户数（户）</label> <input type="text" name="zhs" id="zhs" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<label>总人口数（人）</label> <input type="text" name="zrks" id="zrks" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<label>男（人）</label> <input type="text" name="boy" id="boy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>女（人）</label> <input type="text" name="girl" id="girl" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>外来人口（户）</label> <input type="text" name="wlrk1" id="wlrk1" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>外来人口（人）</label> <input type="text" name="wlrk2" id="wlrk2" style="width: 85%;" />
	</fieldset>
<div class="clear"></div>
<fieldset style="width: 25%; float: left;  margin-right: 1%;">
		<legend>平均五年内出生人口数（人）</legend> <input type="text" name="wncs" id="wncs" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 25%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>平均五年内死亡人口数（人）</legend> <input type="text" name="wnsw" id="wnsw" style="width: 85%;" />
	</fieldset>
			<div class="clear"></div>
		</div>
			<header>
		<center><h3>职业构成</h3></center>
	</header>
<div class="module_content">
<fieldset style="width: 13%; float: left;  margin-right: 1%;">
		<legend>种植业</legend> <input type="text" name="zhy" id="zhy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>养殖业</legend> <input type="text" name="yzy" id="yzy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>工业</legend> <input type="text" name="gy" id="gy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>商业</legend> <input type="text" name="sy" id="sy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>运输业</legend> <input type="text" name="ysy" id="ysy" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>外出打工</legend> <input type="text" name="wcdg" id="wcdg" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>五保户</legend> <input type="text" name="wbh" id="wbh" style="width: 85%;" />
	</fieldset>
<div class="clear"></div>
</div>

			<header>
		<center><h3>年龄构成</h3></center>
	</header>
<div class="module_content">
<fieldset style="width: 18%; float: left;  margin-right: 1%;">
		<legend>0 —— 6岁</legend> <input type="text" name="nlgc1" id="nlgc1" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>7 —— 12岁</legend> <input type="text" name="nlgc2" id="nlgc2" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>13 —— 18岁</legend> <input type="text" name="nlgc3" id="nlgc3" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>19 —— 60岁</legend> <input type="text" name="nlgc4" id="nlgc4" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 18%; float: left;margin-right: 1%;">
		<legend>60岁以上</legend> <input type="text" name="nlgc5" id="nlgc5" style="width: 85%;" />
	</fieldset>
<div class="clear"></div>
</div>
		</article>

<a name="shfw" />
		<article class="module width_full">
		<header>
		<h3>社会服务与基础设施</h3>
		</header>
		<div class="module_content">
			<fieldset style="width: 100%; float: left;">
					<legend>（1）村庄有哪些公共服务设施？</legend>
					<input type="checkbox" style="margin-left: 0.5%;" value="1" id="ggfwss_1" name="ggfwss" />小学
					<input type="checkbox" style="margin-left: 0.5%;" value="2" id="ggfwss_2" name="ggfwss" />幼儿园
					<input type="checkbox" style="margin-left: 0.5%;" value="3" id="ggfwss_3" name="ggfwss" />图书阅览室 
					<input type="checkbox" style="margin-left: 0.5%;" value="4" id="ggfwss_4" name="ggfwss" />卫生室
					<input type="checkbox" style="margin-left: 0.5%;" value="5" id="ggfwss_5" name="ggfwss" />室外活动场地
					<input type="checkbox" style="margin-left: 0.5%;" value="6" id="ggfwss_6" name="ggfwss" />农村超市
					<input type="checkbox" style="margin-left: 0.5%;" value="7" id="ggfwss_7" name="ggfwss" />运动休闲设施
					<input type="checkbox" style="margin-left: 0.5%;" value="8" id="ggfwss_8" name="ggfwss" />信息服务站
					<input type="checkbox" style="margin-left: 0.5%;" value="9" id="ggfwss_9" name="ggfwss" />老年活动室
					<input type="checkbox" style="margin-left: 0.5%;" value="10"id="ggfwss_10" name="ggfwss" />社区服务中心
					<input type="checkbox" style="margin-left: 0.5%;" value="11"id="ggfwss_11" name="ggfwss" />商店
					<input type="checkbox" style="margin-left: 0.5%;" value="12"id="ggfwss_12" name="ggfwss" />饭店
					<input type="checkbox" style="margin-left: 0.5%;" value="13"id="ggfwss_13" name="ggfwss" />旅店
				</fieldset>
				<div class="clear"></div>
	<fieldset style="width: 25%; float: left;  margin-right: 1%;">
		<legend>村庄内硬化道路是否达到户户通？</legend><select name="yhdl" style="width: 85%;">
					<option value="1">是</option>
					<option value="2">否</option>
				</select>
	</fieldset>
	<fieldset style="width: 24%; float: left; margin-right: 1%;">
		<legend>自来水普及率（百分数）</legend> <input type="text" name="zlspj" id="zlspj" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 23%; float: left; margin-right: 1%;">
		<legend>有线电视覆盖率（百分数）</legend> <input type="text" name="yxdsfg" id="yxdsfg" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 23%; float: left; margin-right: 1%;">
		<legend>网络覆盖率（百分数）</legend> <input type="text" name="wlfgl" id="wlfgl" style="width: 85%;" />
	</fieldset>
	<div class="clear"></div>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
	<legend>有无集中供暖</legend>
		<select name="ywjzgn" style="width: 85%;">
			<option value="1">有</option>
			<option value="2">无</option>
		</select>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用煤（户）</legend>
		<input type="text" name="rlmei" id="rlmei" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用沼气（户）</legend>
		<input type="text" name="rlzhaoqi" id="rlzhaoqi" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用液化气（户）</legend>
		<input type="text" name="rlyhq" id="rlyhq" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用电（户）</legend>
		<input type="text" name="rldian" id="rldian" style="width: 85%;" />
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用柴木（户）</legend>
		<input type="text" name="rlchaimu" id="rlchaimu" style="width: 85%;" />
	</fieldset>
	<div class="clear"></div>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<legend>使用太阳能（户）</legend>
		<input type="text" name="rltyn" id="rltyn" style="width: 85%;" />
	</fieldset>
<fieldset style="width: 25%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>煤、气、电、柴混合使用（户）</legend>
		<input type="text" name="rlhunhe" id="rlhunhe" style="width: 85%;" />
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%;margin-right: 1%;">
	<legend>有无污水处理装置</legend>
		<select name="wsclzz" style="width: 85%;">
			<option value="1">有</option>
			<option value="2">无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>日污水处理量（吨）</legend>
		<input type="text" name="rwscll" id="rwscll" style="width: 85%;" />
	</fieldset>

	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>污水处理率（%）</legend>
		<input type="text" name="wscll" id="wscll" style="width: 85%;" />
	</fieldset>
	<div class="clear"></div>
<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>是否有污水排水管网</legend>
		<select name="sfwspsgw" style="width: 85%;">
			<option value="1">有</option>
			<option value="2">无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>垃圾无害化处理率（%）</legend>
		<input type="text" name="ljwhhcll" id="ljwhhcll" style="width: 85%;" />
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>公共厕所合格率（%）</legend>
		<input type="text" name="ggcshgl" id="ggcshgl" style="width: 85%;" />
	</fieldset>
<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>厕所入室率（%）</legend>
		<input type="text" name="ggcshgl" id="ggcshgl" style="width: 85%;" />
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>是否有防灾减灾设施</legend>
		<select name="sffzjz" style="width: 85%;">
			<option value="1">有</option>
			<option value="2">无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>是否有灾害应急机制</legend>
		<select name="sfzhyjjz" style="width: 85%;">
			<option value="1">有</option>
			<option value="2">无</option>
		</select>
	</fieldset>
<div class="clear"/>
			<fieldset style="width: 100%; float: left;">
					<legend>制约农村环境综合治理存在的主要问题是什么？</legend>
					<input type="checkbox" style="margin-left: 0.5%;" value="1" id="zyzlzywt_1" name="zyzlzywt" />农民生活习惯不好
					<input type="checkbox" style="margin-left: 0.5%;" value="2" id="zyzlzywt_2" name="zyzlzywt" />资金投入不足
					<input type="checkbox" style="margin-left: 0.5%;" value="3" id="zyzlzywt_3" name="zyzlzywt" />缺乏低廉的治理技术 
					<input type="checkbox" style="margin-left: 0.5%;" value="4" id="zyzlzywt_4" name="zyzlzywt" />管理体制不健全
					<input type="checkbox" style="margin-left: 0.5%;" value="5" id="zyzlzywt_5" name="zyzlzywt" />农村环境教育不深入
					<input type="checkbox" style="margin-left: 0.5%;" value="6" id="zyzlzywt_6" name="zyzlzywt" />缺乏专门的农村环保人才
				</fieldset>
				<div class="clear"></div>
		</div>
		</article>
	</div>
	</article>
		<div class="clear"></div>
	</div>
	</article>
	<article class="module width_full"> <header>
	<h3>健康评估</h3>
	</header>
	<div class="module_content">
	<fieldset style="width: 100%; float: left;">
			<legend>请上传健康评估调查表</legend>
			<input type="file" style="margin-left: 2%;" id="jkpgbg" name="jkpgbg" />
	</fieldset>
		<div class="clear"/>
	</div>
	</article>
	<a name="stzc" />
	<article class="module width_full"> <header>
	<h3>生态资产</h3>
	</header>
	<div class="module_content">
	<fieldset style="width: 48.5%; float: left;">
		<legend>主导地形</legend> <input type="text" style="margin-left: 2%;" name="zddx" id="zddx" style="width: 98%;" />
	</fieldset>
	<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
		<legend>人均湿地面积（必填）</legend> <input type="text" style="margin-left: 2%;" name="rjsd" id="rjsd" style="width: 98%;" />
	</fieldset>
	<div class="clear" />
			<fieldset style="width: 48.5%; float: left;">
				<legend>1.村庄内生活用水水质是否经过水质检测？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc1_1" name="stzc1" />是
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc1_2" name="stzc1" />否
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>2.村庄内生活用水是否集中供应？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc2_1" name="stzc2" />是
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc2_2" name="stzc2" />否
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>3.村庄供水量是否能满足村民生活需要？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc3_1" name="stzc3" />水量充足 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc3_2" name="stzc3" />基本满足
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc3_3" name="stzc3" />不能满足
					<input type="radio" style="margin-left: 2%;" value="4" id="stzc3_4" name="stzc3" />水量缺乏
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>4.村庄内水污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc4_1" name="stzc4" />污染严重 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc4_2" name="stzc4" />存在污染 
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc4_3" name="stzc4" />无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>5.水如有污染，污染源主要为？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc5_1" name="stzc5" />工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc5_2" name="stzc5" />垃圾污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc5_3" name="stzc5" />农药等化学药品污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc5_4" name="stzc5" />其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>6.村庄内土壤污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc6_1" name="stzc6" />污染严重
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc6_2" name="stzc6" />存在污染
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc6_3" name="stzc6" />无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>7.土壤如有污染，污染源主要为？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc7_1" name="stzc7" />工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc7_2" name="stzc7" />垃圾污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc7_3" name="stzc7" />农药等化学药品污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc7_4" name="stzc7" />其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>8.村庄内空气污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc8_1" name="stzc8" />污染严重 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc8_2" name="stzc8" />存在污染 
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc8_3" name="stzc8" />无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>9.空气如有污染，污染源主要为</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc9_1" name="stzc9" />工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc9_2" name="stzc9" />秸秆燃烧污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc9_3" name="stzc9" />燃煤污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc9_4" name="stzc9" />其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>10.村庄内居民健康情况如何？</legend>
					<input type="radio" value="1" id="stzc10_1" name="stzc10" />良好，无癌症等恶性病
					<input type="radio" value="2" id="stzc10_2" name="stzc10" />一般，有癌症等恶性病
					<input type="radio" value="3" id="stzc10_3" name="stzc10" />不好，癌症等恶性病高发
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>11.村庄内绿化主要采取什么方式？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc11_1" name="stzc11" />村集体主导
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc11_2" name="stzc11" />村民自发
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc11_3" name="stzc11" />村集体引导和村民自发相结合
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>12.村庄周边林地情况如何？</legend>
					<input type="radio" value="1" id="stzc12_1" name="stzc12" />很好
					<input type="radio" value="2" id="stzc12_2" name="stzc12" />好
					<input type="radio" value="3" id="stzc12_3" name="stzc12" />一般
					<input type="radio" value="4" id="stzc12_4" name="stzc12" />不好
					<input type="radio" value="5" id="stzc12_5" name="stzc12" />很差
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 98.5%; float: left;">
				<legend>13.村庄周边自然环境中野生动物种类情况如何？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc13_1" name="stzc13" />野生动物种类多
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc13_2" name="stzc13" />野生动物种类逐步增加
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc13_3" name="stzc13" />有野生动物，但种类逐步减少
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc13_3" name="stzc13" />几乎无野生动物
				</fieldset>
		<div class="clear"/>
	<fieldset style="width: 98.5%; float: left;">
			<legend>请上传乡村社区自然资产存量调查表</legend>
			<input type="file" style="margin-left: 2%;" id="zrzccldcb" name="zrzccldcb" />
	</fieldset>
		<div class="clear" />
	</div>
	</article>
	<a name="jgxz" />
	<article class="module width_full"> <header>
	<h3>景观现状</h3>
	</header>
	<div class="module_content">
		<div class="clear"></div>
	</div>
	</article>
	<footer>
	<div class="submit_link">
		<input type="submit" value="提交问卷" class="alt_btn">
	</div>
	</footer>
	<div class="clear"></div>
	<div class="spacer"></div>
	</section>
	</form>
</body>
</html>