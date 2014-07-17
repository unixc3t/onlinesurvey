<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宜居乡村社区环境健康调查平台</title>
<script type="text/javascript">
function validate_required(field,alerttxt) {
	with (field) {
		if (value==null||value=="") {
			alert(alerttxt);return false}
		else {
			return true
		}
	}
}
function validate_form(thisform) {
	with (thisform) {
		if (validate_required(username,"用户名必填!")==false) {
			username.focus();
			return false;
		}
	}
}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tablesorter").tablesorter();
	});
	$(document).ready(function() {
		$(".tab_content").hide();
		$("ul.tabs li:first").addClass("active").show();
		$(".tab_content:first").show();

		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active");
			$(this).addClass("active");
			$(".tab_content").hide();

			var activeTab = $(this).find("a").attr("href");
			$(activeTab).fadeIn();
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
		<article class="breadcrumbs"> <a href="#">宜居乡村社区环境健康调查平台</a>
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
		<strong>Copyright &copy; 2014宜居乡村社区环境健康调查平台</strong>
	</p>
	<p>
		Design by <a href="#">Alex</a>
	</p>
	</footer> </aside>
	<!-- end of sidebar -->

	<section id="main" class="column">
	<h4 class="alert_info">欢迎使用宜居乡村社区环境健康调查平台</h4>
	<div id="bodystart">
		<a name="jbqk" />
		<form action="ptyh" onsubmit="return validate_form(this)" method="post">
			<article class="module width_full"> <header>
			<h3>基本情况</h3>
			</header>
			<div class="module_content">
				<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
					<label>姓名（必填）</label> <input type="text" name="username" id="username" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>性别</label> <select name="sex" style="width: 85%;">
						<option value="1">男</option>
						<option value="2">女</option>
					</select>
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>年龄</label> <input type="text" name="age" id="age" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>职业</label> <input type="text" name="zhiye" id="zhiye" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>文化程度</label>
					<select name="whcd" style="width: 85%;">
						<option value="1">高中以上</option>
						<option value="2">中专</option>
						<option value="3">初中以下</option>
					</select>
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>户口</label> <select name="hukou" style="width: 85%;">
						<option value="1">本地城镇</option>
						<option value="2">本地农村</option>
						<option value="3">外地</option>
					</select>
				</fieldset>

				<div class="clear"></div>
				<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
					<label>所在乡（镇）村</label> <input type="text" name="szxz" id="szxz" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>家庭人口</label> <input type="text" name="jtrk" id="jtrk" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>住房建筑面积</label> <input type="text" name="zfjzmj" id="zfjzmj" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>宅基地面积</label> <input type="text" name="zjdmj" id="zjdmj" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>庭院面积</label> <input type="text" name="tymj" id="tymj" style="width: 85%;" />
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-right: 1%;">
					<label>厕所是否在室内</label>
						<select name="cesuoqk" style="width: 85%;">
						<option value="1">是</option>
						<option value="2">否</option>
						</select>
				</fieldset>
				<div class="clear"></div>

				<fieldset style="width: 40%; float: left; margin-left: 2%; margin-right: 1%;">
					<legend>庭院功能（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="tygn_1" name="tygn" />种植蔬菜等农作物 
					<input type="checkbox" style="margin-left: 2%;" value="2" id="tygn_2" name="tygn" />种植花草树木
					<input type="checkbox" style="margin-left: 2%;" value="3" id="tygn_3" name="tygn" />养殖
					<input type="checkbox" style="margin-left: 2%;" value="4" id="tygn_4" name="tygn" />空地
				</fieldset>
				<fieldset style="width: 40%; float: left; margin-left: 2%; margin-right: 1%;">
					<legend>使用何种生活燃料（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="syhzrl_1" name="syhzrl" />柴木 
					<input type="checkbox" style="margin-left: 2%;" value="2" id="syhzrl_2" name="syhzrl" />沼气
					<input type="checkbox" style="margin-left: 2%;" value="3" id="syhzrl_3" name="syhzrl" />液化气 
					<input type="checkbox" style="margin-left: 2%;" value="4" id="syhzrl_4" name="syhzrl" />煤 
					<input type="checkbox" style="margin-left: 2%;" value="5" id="syhzrl_5" name="syhzrl" />电
					<input type="checkbox" style="margin-left: 2%;" value="6" id="syhzrl_6" name="syhzrl" />太阳能
				</fieldset>

				<div class="clear"></div>

			</div>
			</article>
			<a name="hjxz" />
			<article class="module width_full"> <header>
			<h3>环境现状</h3>
			</header>
			<div class="module_content">
				<fieldset style="width: 99%; float: left;">
					<legend>1.您认为当前农村哪些环境问题对你的生活影响最大？</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz1_1" name="hjxz1" />水污染
					 <input type="checkbox" style="margin-left: 2%;" value="2 " id="hjxz1_2" name="hjxz1" />大气污染 
					 <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz1_3" name="hjxz1" />生活垃圾污染 
					 <input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz1_4" name="hjxz1" />噪声污染
					  <input type="checkbox" style="margin-left: 2%;" value="5" id="hjxz1_5" name="hjxz1" />畜禽粪便
					   <input type="checkbox" style="margin-left: 2%;" value="2 " id="hjxz1_6" name="hjxz1" />秸秆焚烧 
					 <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz1_7" name="hjxz1" />化肥、农药及地膜
					 <input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz1_8" name="hjxz1" />其它
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left;">
					<legend>2.您认为您居住地的环境质量状况近年来的变化趋势怎样？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz2_1" name="hjxz2" />有明显改善 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz2_2" name="hjxz2" />有明显恶化 
					<input type="radio" style="margin-left: 2%;" value="3" id="hjxz2_3" name="hjxz2" />没变化
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>3.您认为导致您居住地环境质量状况发生变化的主要原因是什么？[可多选]</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz3_1" name="hjxz3" />公众环保意识 
					<input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz3_2" name="hjxz3" />环境管理 
					<input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz3_3" name="hjxz3" />工业污染治理
					 <input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz3_4" name="hjxz3" />社会经济发展
					  <input type="checkbox" style="margin-left: 2%;" value="5" id="hjxz3_5" name="hjxz3" />生活垃圾 
					  <input type="checkbox" style="margin-left: 2%;" value="6" id="hjxz3_6" name="hjxz3" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left;">
					<legend>4.您家产生的生活污水（洗菜水、洗衣服水或冲厕水）排向哪里？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz4_1" name="hjxz4" />直接排入附近的沟渠
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz4_2" name="hjxz4" />排入管网后未经处理统一排入沟渠
					<input type="radio" style="margin-left: 2%;" value="3" id="hjxz4_3" name="hjxz4" />排入管网统一处理后排放
					<input type="radio" style="margin-left: 2%;" value="4" id="hjxz4_4" name="hjxz4" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left;">
					<legend>5.您认为您居住地的空气质量存在哪些问题？[可多选]</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz5_1" name="hjxz5" />有异味
					 <input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz5_2" name="hjxz5" />粉尘大
					  <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz5_3" name="hjxz5" />雾霾天气多 
					  <input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz5_4" name="hjxz5" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>6.您认为造成您居住地的空气质量不理想的主要原因是什么？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz6_1" name="hjxz6" />全球空气质量变差 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz6_2" name="hjxz6" />当地工业污染造成
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz6_3" name="hjxz6" />生态环境被破坏 
					 <input type="radio" style="margin-left: 2%;" value="4" id="hjxz6_4" name="hjxz6" />其他
				</fieldset>
				<fieldset style="width: 30%; float: left; margin-left: 1.5%;">
					<legend>7.近5年家中是否有癌症等恶性肿瘤病人？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz7_1" name="hjxz7" />有 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz7_2" name="hjxz7" />没有
				</fieldset>
				<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
					<legend>若有癌症，有几人</legend> <input type="text" name="aizheng" id="aizheng" style="width: 85%;" />
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>8.您认为您居住地周围的生态环境存在哪些问题？[可多选]</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz8_1" name="hjxz8" />树木被砍伐
					 <input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz8_2" name="hjxz8" />农田被占用
					  <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz8_3" name="hjxz8" />原有的动植物消失
					   <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz8_4" name="hjxz8" />其他
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>9.1请问您家里的饮用水水源为地表水还是地下水？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz9_1" name="hjxz9" />地表水
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz9_2" name="hjxz9" />地下水
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>9.2您对饮用水水质满意吗？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz9_2_1" name="hjxz9_2" />满意
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz9_2_2" name="hjxz9_2" />较满意
					  <input type="radio" style="margin-left: 2%;" value="3" id="hjxz9_2_3" name="hjxz9_2" />一般 
					  <input type="radio" style="margin-left: 2%;" value="4" id="hjxz9_2_4" name="hjxz9_2" />较不满意
					   <input type="radio" style="margin-left: 2%;" value="5" id="hjxz9_2_5" name="hjxz9_2" />不满意
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>10.当地是否发生过水污染事件？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz10_1" name="hjxz10" />发生过
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz10_2" name="hjxz10" />没发生过
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>11.您对当地社会保障制度中哪些内容最为关心？[可多选]</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz11_1" name="hjxz11" />养老保险
					 <input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz11_2" name="hjxz11" />医疗保险 
					 <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz11_3" name="hjxz11" />残疾人帮扶 
					 <input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz11_4" name="hjxz11" />五保供养 
					 <input type="checkbox" style="margin-left: 2%;" value="5" id="hjxz11_5" name="hjxz11" />最低生活保障 
					 <input type="checkbox" style="margin-left: 2%;" value="6" id="hjxz11_6" name="hjxz11" />军人优抚 
					 <input type="checkbox" style="margin-left: 2%;" value="7" id="hjxz11_7" name="hjxz11" />救灾救济
					<input type="checkbox" style="margin-left: 2%;" value="8" id="hjxz11_8" name="hjxz11" />农村危房改造帮扶 
					<input type="checkbox" style="margin-left: 2%;" value="9" id="hjxz11_9" name="hjxz11" />移民新村帮扶
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>12.您认为当地的医疗情况有哪些需要改进？</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz12_1" name="hjxz12" />增加药品种类
					<input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz12_2" name="hjxz12" />改善扩建卫生房屋 
					<input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz12_3" name="hjxz12" />改善服务态度
					<input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz12_4" name="hjxz12" />提高医生技术水平 
					<input type="checkbox" style="margin-left: 2%;" value="5" id="hjxz12_5" name="hjxz12" />更新医疗设备
					<input type="checkbox" style="margin-left: 2%;" value="6" id="hjxz12_6" name="hjxz12" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>13.您对所在地区的教育情况是否满意？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz13_1" name="hjxz13" />满意 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz13_2" name="hjxz13" />较满意
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz13_3" name="hjxz13" />一般 
					 <input type="radio" style="margin-left: 2%;" value="4" id="hjxz13_4" name="hjxz13" />较不满意 
					 <input type="radio" style="margin-left: 2%;" value="5" id="hjxz13_5" name="hjxz13" />不满意
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>14.您对所在地区的医疗卫生状况是否满意？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz14_1" name="hjxz14" />满意
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz14_2" name="hjxz14" />较满意 
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz14_3" name="hjxz14" />一般
					  <input type="radio" style="margin-left: 2%;" value="4" id="hjxz14_4" name="hjxz14" />较不满意 
					  <input type="radio" style="margin-left: 2%;" value="5" id="hjxz14_5" name="hjxz14" />不满意
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>15.您觉得本村需要增加哪些公共设施？[可多选]</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="hjxz15_1" name="hjxz15" />肉菜市场 
					<input type="checkbox" style="margin-left: 2%;" value="2" id="hjxz15_2" name="hjxz15" />文化室
					 <input type="checkbox" style="margin-left: 2%;" value="3" id="hjxz15_3" name="hjxz15" />运动场地(如篮球场、健身场地)
					<input type="checkbox" style="margin-left: 2%;" value="4" id="hjxz15_4" name="hjxz15" />卫生所 
					<input type="checkbox" style="margin-left: 2%;" value="5" id="hjxz15_5" name="hjxz15" />小学 
					<input type="checkbox" style="margin-left: 2%;" value="6" id="hjxz15_6" name="hjxz15" />幼儿园
					 <input type="checkbox" style="margin-left: 2%;" value="7" id="hjxz15_7" name="hjxz15" />公厕 
					 <input type="checkbox" style="margin-left: 2%;" value="8" id="hjxz15_8" name="hjxz15" />垃圾收集点
					 <input type="checkbox" style="margin-left: 2%;" value="9" id="hjxz15_9" name="hjxz15" />老人之家（托老所）
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>16.1 您如何处理厨余垃圾（剩菜、剩饭、菜叶等）？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_1_1" name="hjxz16_1" />随地扔掉
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_1_2" name="hjxz16_1" />堆肥
					  <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_1_3" name="hjxz16_1" />填埋 
					  <input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_1_4" name="hjxz16_1" />畜禽食物
					   <input type="radio" style="margin-left: 2%;" value="5" id="hjxz16_1_5" name="hjxz16_1" />扔到垃圾站
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>16.2 您如何处理玻璃（酒瓶、罐头瓶、调料瓶等）？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_2_1" name="hjxz16_2" />随地扔掉
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_2_2" name="hjxz16_2" />卖给回收站
					  <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_2_3" name="hjxz16_2" />扔到垃圾站
					   <input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_2_4" name="hjxz16_2" />回收使用
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>16.3 您如何处理硬塑料（包装盒、瓶、桶等）？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_3_1" name="hjxz16_3" />随地扔掉 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_3_2" name="hjxz16_3" />回收使用
					<input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_3_3" name="hjxz16_3" />卖给回收站 
					<input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_3_4" name="hjxz16_3" />扔到垃圾站
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>16.4 您如何处理软塑料（废薄膜、包装袋等）？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_4_1" name="hjxz16_4" />随地扔掉 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_4_2" name="hjxz16_4" />卖给回收站
					<input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_4_3" name="hjxz16_4" />扔到垃圾站 
					<input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_4_4" name="hjxz16_4" />焚烧
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>16.5 您如何处理废电池？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_7_1" name="hjxz16_7" />随地扔掉
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_7_2" name="hjxz16_7" />卖给回收站
					  <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_7_3" name="hjxz16_7" />扔到垃圾站
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>16.6 您如何处理畜禽粪便？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_8_1" name="hjxz16_8" />随地扔掉
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_8_2" name="hjxz16_8" />直接还田 
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_8_3" name="hjxz16_8" />扔到垃圾站 
					 <input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_8_4" name="hjxz16_8" />产沼气
					  <input type="radio" style="margin-left: 2%;" value="5" id="hjxz16_8_5" name="hjxz16_8" />其他
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>16.7 您如何处理厕所粪便？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_9_1" name="hjxz16_9" />还田
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_9_2" name="hjxz16_9" />卖给回收站 
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_9_3" name="hjxz16_9" />冲入化粪池
					  <input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_9_4" name="hjxz16_9" />产沼气
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>16.8 您如何处理易拉罐？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_10_1" name="hjxz16_10" />随地扔掉
					 <input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_10_2" name="hjxz16_10" />回收使用 
					 <input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_10_3" name="hjxz16_10" />卖给回收站 
					 <input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_10_4" name="hjxz16_10" />扔到垃圾站
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>16.9 您如何处理生活污水？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="hjxz16_11_1" name="hjxz16_11" />直接排放 
					<input type="radio" style="margin-left: 2%;" value="2" id="hjxz16_11_2" name="hjxz16_11" />经化粪池排放 
					<input type="radio" style="margin-left: 2%;" value="3" id="hjxz16_11_3" name="hjxz16_11" />入污水处理站 
					<input type="radio" style="margin-left: 2%;" value="4" id="hjxz16_11_4" name="hjxz16_11" />经湿地净化
					<input type="radio" style="margin-left: 2%;" value="5" id="hjxz16_11_5" name="hjxz16_11" />其他
				</fieldset>
				<div class="clear" />
			</div>
			</article>
			<a name="stzc" />
			<article class="module width_full"> <header>
			<h3>生态资产</h3>
			</header>
			<div class="module_content">
				<fieldset style="width: 48.5%; float: left;">
					<legend>1.您觉得村庄内小河流、小溪等地表水水质如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc1_1" name="stzc1" />很好
					 <input type="radio" style="margin-left: 2%;" value="2" id="stzc1_2" name="stzc1" />一般，水质稳定
					  <input type="radio" style="margin-left: 2%;" value="3" id="stzc1_3" name="stzc1" />水质在逐步变坏 
					  <input type="radio" style="margin-left: 2%;" value="4" id="stzc1_4" name="stzc1" />现状很差
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>2.您的庭院内绿化如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc2_1" name="stzc2" />好
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc2_2" name="stzc2" />一般
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc2_3" name="stzc2" />无绿化
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>3.您对住房及周边绿化情况是否满意？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc3_1" name="stzc3" />满意 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc3_2" name="stzc3" />一般
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc3_3" name="stzc3" />不满意
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>4.您家庭院内绿化主要方式</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="stzc4_1" name="stzc4" />种菜 
					<input type="checkbox" style="margin-left: 2%;" value="2" id="stzc4_2" name="stzc4" />种果树 
					<input type="checkbox" style="margin-left: 2%;" value="3" id="stzc4_3" name="stzc4" />非经济树种
					<input type="checkbox" style="margin-left: 2%;" value="4" id="stzc4_4" name="stzc4" />种观赏花 
					<input type="checkbox" style="margin-left: 2%;" value="5" id="stzc4_5" name="stzc4" />其他
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
					<legend>1.您认为您所处的街坊、庭院存在以下哪些不足之处？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz1_1" name="jgxz1" />垃圾乱堆、乱放 
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz1_2" name="jgxz1" />乱搭、乱建违章建筑
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz1_3" name="jgxz1" />地面铺装单调或损坏
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz1_4" name="jgxz1" />车辆乱停、乱放
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz1_5" name="jgxz1" />缺乏健身设施和凉亭等休闲设施 
					<input type="radio" style="margin-left: 2%;" value="6" id="jgxz1_6" name="jgxz1" />其他情况
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>2.您认为社区主要道路两侧的景观还存在什么问题？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz2_1" name="jgxz2" />垃圾桶数量不足，杂物、垃圾乱堆放
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz2_2" name="jgxz2" />行道树数量不足、两侧绿化量低 
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz2_3" name="jgxz2" />道路两侧建筑风格不协调，外观效果差
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz2_4" name="jgxz2" />道路过宽或过窄，缺乏生活气息
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz2_5" name="jgxz2" />其他情况
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>3.您周边有无可供休闲游玩的公园（或广场）？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz3_1" name="jgxz3" />没有
					 <input type="radio" style="margin-left: 2%;" value="2" id="jgxz3_2" name="jgxz3" />有一处
					  <input type="radio" style="margin-left: 2%;" value="3" id="jgxz3_3" name="jgxz3" />有两处
					   <input type="radio" style="margin-left: 2%;" value="4" id="jgxz3_4" name="jgxz3" />有三处或三处以上
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>4.您认为您最常去的公园（或广场）存在哪些不足之处？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz4_1" name="jgxz4" />夜晚灯光太暗，在公园感觉不安全
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz4_2" name="jgxz4" />公园景观设施老化、破损
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz4_3" name="jgxz4" />配套设施不足，如厕所、健身设施、休息桌椅
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz4_4" name="jgxz4" />树木数量有限，整体绿化环境不好
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz4_5" name="jgxz4" />其他情况
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>5.您认为社区景观的哪一方面最需要改造提升和规划营造？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz5_1" name="jgxz5" />街坊庭院景观
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz5_2" name="jgxz5" />道路街巷景观
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz5_3" name="jgxz5" />广场公园景观
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz5_4" name="jgxz5" />河流水系景观
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>6.您对本乡村社区景观营造还有什么意愿和建议：</legend>
					<textarea rows="12" name="jianyi" id="jianyi"></textarea>
				</fieldset>
				<div class="clear" />
			</div>
			</article>
	</div>
	<footer>
	<div class="submit_link">
		<input type="submit" value="提交问卷" class="alt_btn">
	</div>
	</footer>
	<div class="clear"/>
	<div class="spacer"/>
	</section>
	</form>
</body>
</html>