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
		<a href="#">普通用户主页</a>
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

	<aside id="sidebar" class="column">
	<hr />
	<h3>一、基本情况</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#jbqk">基本情况</a></li>
	</ul>
	<h3>二、环境现状</h3>
	<ul class="toggle">
		<li class="icn_photo"><a href="#hjxz">环境现状</a></li>
	</ul>
	<h3>三、生态资产</h3>
	<ul class="toggle">
		<li class="icn_view_users"><a href="#stzc">生态资产</a></li>
	</ul>
	<h3>四、景观现状</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="#jgxz">景观现状</a></li>
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
	<a name="jbqk" />
	<form action="ptyh" method="post">
	<article class="module width_full"> <header>
	<h3>基本情况</h3>
	</header>
	<div class="module_content">
		<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
			<label>姓名（必填）</label>
			<input type="text" name="username" id="username" style="width: 85%;">
		</fieldset>
		<fieldset style="width:15%; float:left; margin-right: 1%;">
			<label>性别</label>
			<select style="width:85%;">
				<option>男</option>
				<option>女</option>
			</select>
		</fieldset>
		<fieldset style="width: 15%; float: left;margin-right: 1%;">
			<label>年龄</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width: 15%; float: left;margin-right: 1%;">
			<label>职业</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width:15%; float:left; margin-right: 1%;">
			<label>文化程度</label>
			<select style="width:85%;">
				<option>高中以上</option>
				<option>中专</option>
				<option>初中以下</option>
			</select>
		</fieldset>
		<fieldset style="width:15%; float:left; margin-right: 1%;">
			<label>户口</label>
			<select style="width:85%;">
				<option>本地城镇</option>
				<option>本地农村</option>
				<option>外地</option>
			</select>
		</fieldset>

		<div class="clear"></div>
		<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
			<label>所在乡（镇）村</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width: 15%; float: left;  margin-right: 1%;">
			<label>家庭人口</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width: 15%; float: left; margin-right: 1%;">
			<label>住房建筑面积</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width: 15%; float: left; margin-right: 1%;">
			<label>宅基地面积</label> <input type="text" style="width: 85%;">
		</fieldset>
		<fieldset style="width: 15%; float: left;margin-right: 1%;">
			<label>庭院面积</label> <input type="text" style="width: 85%;">
		</fieldset>
		
		<div class="clear"></div>
		
		<fieldset style="width:40%; float:left;  margin-left: 2%; margin-right: 1%;">
				<legend>庭院功能（可多选）</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />种植蔬菜等农作物
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />种植花草树木
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />养殖
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />空地
		</fieldset>
		<fieldset style="width:40%; float:left;  margin-left: 2%; margin-right: 1%;">
				<legend>使用何种生活燃料（可多选）</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />柴木
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />沼气
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />液化气
				<input type="checkbox" style="margin-left: 2%;" value="4" id="fav" name="fav" />煤
				<input type="checkbox" style="margin-left: 2%;" value="5" id="fav" name="fav" />电
				<input type="checkbox" style="margin-left: 2%;" value="6" id="fav" name="fav" />太阳能
		</fieldset>
		
		<div class="clear"></div>

	</div>
	</article> <a name="hjxz" /><article class="module width_full"> <header>
	<h3>环境现状</h3>
	</header>
	<div class="module_content">
		<fieldset style="width:48.5%; float:left;">
				<legend>1.您认为当前农村哪些环境问题对你的生活影响最大？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />水污染
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />大气污染
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />生活垃圾污染
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />噪声污染
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />畜禽粪便
		</fieldset>
		<fieldset style="width:48.5%; float:left;  margin-left: 1.5%; ">
				<legend>2.您认为您居住地的环境质量状况近年来的变化趋势怎样？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />有明显改善
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />有明显恶化
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />没变化
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left; margin-right: 1%;">
				<legend>3.您认为导致您居住地环境质量状况发生变化的主要原因是什么？[可多选]</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />公众环保意识
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />环境管理
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />工业污染治理
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />社会经济发展
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />生活垃圾
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>4.您认为您居住地的环境质量状况近年来的变化趋势怎样？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />有明显改善
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />有明显恶化
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />没变化
		</fieldset>
		<fieldset style="width:48.5%; float:left;  margin-left: 1.5%;">
				<legend>5.您认为您居住地的空气质量存在哪些问题？[可多选]</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />有异味
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />粉尘大
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />雾霾天气多
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>6.您认为造成您居住地的空气质量不理想的主要原因是什么？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />全球空气质量变差
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />当地工业污染造成
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />生态环境被破坏
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>7.近5年家中是否有癌症等恶性肿瘤病人？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />有
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />没有
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>8.您认为您居住地周围的生态环境存在哪些问题？[可多选]</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />树木被砍伐
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />农田被占用
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />原有的动植物消失
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<fieldset style="width:48.5%; float:left;  margin-left: 1.5%;">
				<legend>9.1请问您家里的饮用水水源为地表水还是地下水？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />地表水
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />地下水
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>9.2您对饮用水水质满意吗？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />满意
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />较满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />一般
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />较不满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />不满意
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>10.当地是否发生过水污染事件？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />发生过
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />没发生过
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>11.您对当地社会保障制度中哪些内容最为关心？[可多选]</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />养老保险
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />医疗保险
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />残疾人帮扶
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />五保供养
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />最低生活保障
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />军人优抚
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />救灾救济
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />农村危房改造帮扶
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />移民新村帮扶
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>12.您认为当地的医疗情况有哪些需要改进？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />增加药品种类
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />改善扩建卫生房屋
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />改善服务态度
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />提高医生技术水平
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />更新医疗设备
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>13.您对所在地区的教育情况是否满意？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />满意
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />较满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />一般
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />较不满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />不满意
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>14.您对所在地区的医疗卫生状况是否满意？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />满意
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />较满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />一般
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />较不满意
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />不满意
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>15.您觉得本村需要增加哪些公共设施？[可多选]</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />肉菜市场
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />文化室
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />运动场地(如篮球场、健身场地)
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卫生所
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />小学
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />幼儿园
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />公厕
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />垃圾收集点
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />老人之家（托老所）
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.1 您如何处理厨余垃圾（剩菜、剩饭、菜叶等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />堆肥
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />填埋
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />畜禽食物
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>16.2 您如何处理玻璃（酒瓶、罐头瓶、调料瓶等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />回收使用
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.3 您如何处理硬塑料（包装盒、瓶、桶等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />回收使用
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>16.4 您如何处理软塑料（废薄膜、包装袋等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />焚烧
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.5 您如何处理硬塑料（包装盒、瓶、桶等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />回收使用
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>16.6 您如何处理软塑料（废薄膜、包装袋等）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />焚烧
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.7 您如何处理废电池？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>16.8 您如何处理畜禽粪便？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />直接还田
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />产沼气
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.9 您如何处理厕所粪便？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />还田
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />冲入化粪池
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />产沼气
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>16.10 您如何处理易拉罐？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />随地扔掉
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />回收使用
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />卖给回收站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />扔到垃圾站
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>16.11 您如何处理生活污水？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />直接排放
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />经化粪池排放
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />入污水处理站
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />经湿地净化
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
	</div>
	</article><a name="stzc" />
	<article class="module width_full"> <header>
	<h3>生态资产</h3>
	</header>
	<div class="module_content">
		<fieldset style="width:48.5%; float:left; ">
				<legend>1.您觉得村庄内小河流、小溪等地表水水质如何？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />很好
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />一般，水质稳定
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />水质在逐步变坏
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />现状很差
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>2.您的庭院内绿化如何？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />好
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />一般
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />无绿化
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:48.5%; float:left;">
				<legend>3.您对住房及周边绿化情况是否满意？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />满意
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />一般
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />不满意
		</fieldset>
		<fieldset style="width:48.5%; float:left; margin-left: 1.5%;">
				<legend>4.您家庭院内绿化主要方式</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />种菜
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />种果树
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />非经济树种
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />种观赏花
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他
		</fieldset>
		<div class="clear"/>
	</div>
	</article><a name="jgxz" />
	<article class="module width_full"> <header>
	<h3>景观现状</h3>
	</header>
	<div class="module_content">
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>1.您认为您所处的街坊、庭院存在以下哪些不足之处？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />垃圾乱堆、乱放
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />乱搭、乱建违章建筑
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />地面铺装单调或损坏
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />车辆乱停、乱放
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />缺乏健身设施和凉亭等休闲设施
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他情况
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>2.您认为社区主要道路两侧的景观还存在什么问题？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />垃圾桶数量不足，杂物、垃圾乱堆放
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />行道树数量不足、两侧绿化量低
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />道路两侧建筑风格不协调，外观效果差
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />道路过宽或过窄，缺乏生活气息
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他情况 
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>3.您周边有无可供休闲游玩的公园（或广场）？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />没有
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />有一处
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />有两处
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />有三处或三处以上
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>4.您认为您最常去的公园（或广场）存在哪些不足之处？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />夜晚灯光太暗，在公园感觉不安全
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />公园景观设施老化、破损
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />配套设施不足，如厕所、健身设施、休息桌椅
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />树木数量有限，整体绿化环境不好
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />其他情况
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>5.您认为社区景观的哪一方面最需要改造提升和规划营造？</legend>
				<input type="checkbox" style="margin-left: 2%;" value="1" id="fav" name="fav" />街坊庭院景观
				<input type="checkbox" style="margin-left: 2%;" value="2" id="fav" name="fav" />道路街巷景观
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />广场公园景观
				<input type="checkbox" style="margin-left: 2%;" value="3" id="fav" name="fav" />河流水系景观
		</fieldset>
		<div class="clear"/>
		<fieldset style="width:99%; float:left;  margin-right: 1%;">
				<legend>6.您对本乡村社区景观营造还有什么意愿和建议：</legend>
				<textarea rows="12"></textarea>
		</fieldset>
		<div class="clear"/>
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