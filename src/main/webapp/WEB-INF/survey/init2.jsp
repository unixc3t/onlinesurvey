<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
		<strong>Copyright &copy; 2014 宜居乡村社区健康调查平台</strong>
	</p>
	<p>
		Design by <a href="#">Alex</a>
	</p>
	</footer> </aside>
	<!-- end of sidebar -->

	<section id="main" class="column">
	<h4 class="alert_info">欢迎使用宜居乡村社区健康调查平台</h4>
	<form action="cwhyh" method="post" enctype="multipart/form-data">
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
		<input type="text" name="csrsl" id="csrsl" style="width: 85%;" />
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
			<fieldset style="width: 99%; float: left; margin-right: 1%;">
				<legend>1.乡村社区内路网是哪种形式的?</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz1_1" name="jgxz1" />树枝状
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz1_2" name="jgxz1" />方格网
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz1_3" name="jgxz1" />半网络状
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz1_4" name="jgxz1" />自由式
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz1_5" name="jgxz1" />环状 
					<input type="radio" style="margin-left: 2%;" value="6" id="jgxz1_6" name="jgxz1" />放射状
					<input type="radio" style="margin-left: 2%;" value="7" id="jgxz1_7" name="jgxz1" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>2.乡村社区内主要道路两侧建筑建造时有没有什么特殊要求？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz2_1" name="jgxz2" />立面颜色统一
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz2_2" name="jgxz2" />立面材质统一 
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz2_3" name="jgxz2" />沿街建筑高度控制
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz2_4" name="jgxz2" />其他
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz2_5" name="jgxz2" />没有具体要求
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>3.作为管理者您认为本村居民的庭院目前急需解决的问题是？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz3_1" name="jgxz3" />环境卫生
					 <input type="radio" style="margin-left: 2%;" value="2" id="jgxz3_2" name="jgxz3" />绿化种植
					  <input type="radio" style="margin-left: 2%;" value="3" id="jgxz3_3" name="jgxz3" />基础设施（垃圾转运、排水设施等）
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>4.对于庭院基础设施您认为应最先解决的是？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz4_1" name="jgxz4" />整改厨房
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz4_2" name="jgxz4" />整改厕所
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz4_3" name="jgxz4" />垃圾处理
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz4_4" name="jgxz4" />污水排放
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>5.从广场位置、类型、尺度大小的角度方面，您觉得乡村社区内的广场在社区景观中的地位如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz5_1" name="jgxz5" />可代表乡村社区的形象
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz5_2" name="jgxz5" />算比较有特点吧
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz5_3" name="jgxz5" />一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz5_4" name="jgxz5" />排不上位置
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz5_5" name="jgxz5" />不值一提
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
				<legend>6.您觉得乡村社区内广场景观中的各类功能设施有哪些方面需要加强？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz6_1" name="jgxz6" />数量
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz6_2" name="jgxz6" />质量
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz6_3" name="jgxz6" />安全性
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz6_4" name="jgxz6" />与环境关系适宜性
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz6_5" name="jgxz6" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>7.您觉得乡村社区内广场景观还有哪些方面需要加强和提升？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz7_1" name="jgxz7" />空间布局
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz7_2" name="jgxz7" />绿化方面
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz7_3" name="jgxz7" />用地铺装
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz7_4" name="jgxz7" />建筑小品
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz7_5" name="jgxz7" />水体景观
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz7_6" name="jgxz7" />照明
					<input type="checkbox" style="margin-left: 2%;" value="7" id="jgxz7_7" name="jgxz7" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>8.您觉得乡村社区内绿地景观还有哪些方面需要加强和提升？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz8_1" name="jgxz8" />植物搭配
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz8_2" name="jgxz8" />铺地的材料与形式
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz8_3" name="jgxz8" />小品构筑物的艺术性
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz8_4" name="jgxz8" />水体景观环境质量
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz8_5" name="jgxz8" />照明
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz8_6" name="jgxz8" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>9.您认为那种驳岸形式更值得采用？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz9_1" name="jgxz9" />自然式草坡
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz9_2" name="jgxz9" />自然石砌筑
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz9_3" name="jgxz9" />规则是混凝土砌筑
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz9_4" name="jgxz9" />混合式驳岸
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>10.您认为乡村社区河流，水系景观的哪些方面需要进行改善?（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz10_1" name="jgxz10" />水质恢复
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz10_2" name="jgxz10" />水体自然形态恢复
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz10_3" name="jgxz10" />乡土植物恢复
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz10_4" name="jgxz10" />文化历史恢复
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz10_5" name="jgxz10" />滨水活动空间改善
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz10_6" name="jgxz10" />基础设施改善
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>11.您认为现在村庄内的河道水网是否需要进行改造？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz11_1" name="jgxz11" />需要
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz11_2" name="jgxz11" />不需要
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>12.如需要，您希望改造的方面是？</legend>
					<input type="text" name="xwgjdfm" id="xwgjdfm" style="width: 96%;" />
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>13.您对目前乡村社区景观对文化的再现和传承是否满意？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz12_1" name="jgxz12" />非常满意
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz12_2" name="jgxz12" />满意
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz12_3" name="jgxz12" />一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz12_4" name="jgxz12" />不满意
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>14.您觉得乡村社区特色景观营造中应该加强建设的问题是什么？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz13_1" name="jgxz13" />反映乡村历史风貌
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz13_2" name="jgxz13" />体现新农村发展特色
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz13_3" name="jgxz13" />以上两者
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz13_4" name="jgxz13" />无所谓
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 98%; float: left; margin-right: 1%;">
					<legend>15.乡村社区景观需要进行哪些方面的改造？（可多选）</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz14_1" name="jgxz14" />建筑景观
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz14_2" name="jgxz14" />绿化种植
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz14_3" name="jgxz14" />加入一些北方特色景观
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz14_4" name="jgxz14" />只需要整治环境，没必要进行大的改造
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz14_5" name="jgxz14" />其他
				</fieldset>
				<div class="clear" />

				<fieldset style="width: 98%; float: left; margin-right: 1%;">
					<legend>16.本村有以下哪些人文景观？</legend>
					<input type="checkbox" style="margin-left: 1%;" value="1" id="jgxz15_1" name="jgxz15" />文物古迹
					<input type="checkbox" style="margin-left: 1%;" value="2" id="jgxz15_2" name="jgxz15" />革命活动地
					<input type="checkbox" style="margin-left: 1%;" value="3" id="jgxz15_3" name="jgxz15" />现代经济、技术、文化、艺术、科学活动场所（如农业观光园、展览馆等）
					<input type="checkbox" style="margin-left: 1%;" value="4" id="jgxz15_4" name="jgxz15" />地区和民族的特殊人文景观（如风俗、手工艺等）
					<input type="checkbox" style="margin-left: 1%;" value="5" id="jgxz15_5" name="jgxz15" />无
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>16.1 如有文物景观保存的怎么样？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz16_1" name="jgxz16" />非常好
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz16_2" name="jgxz16" />较好
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz16_3" name="jgxz16" />一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz16_4" name="jgxz16" />较差
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz16_5" name="jgxz16" />非常差
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>16.2 如有文物景观，利用的怎么样？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz17_1" name="jgxz17" />非常好
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz17_2" name="jgxz17" />较好
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz17_3" name="jgxz17" />一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz17_4" name="jgxz17" />较差
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz17_5" name="jgxz17" />非常差
				</fieldset>
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