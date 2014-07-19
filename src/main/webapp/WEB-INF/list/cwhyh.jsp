<%@page import="alex.pojo.Cwhyh"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宜居乡村社区健康调查平台</title>
</head>
<body>
<form action="updatecwhyh" method="post" enctype="multipart/form-data">
<section id="main" class="column" style="width: 99%; float: left;">
<h4 class="alert_info">更新村委会用户数据表格的时候，在原位置重新上传即可！</h4>
<a href="/upload/${cwhyh.jkpgbg}" />
<div id="bodystart">
<article class="module width_full"> <header>
	<h3>问卷登记</h3>
	</header>
	<div class="module_content">
	<fieldset style="width: 15%; float: left; margin-left: 2%; margin-right: 1%;">
		<label>调查人（必填）</label> <input type="text" name="username" id="username" style="width: 85%;" value="${cwhyh.username}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>省（市）</label> <input type="text" name="sheng" id="sheng" style="width: 85%;" value="${cwhyh.sheng}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>市（县）</label> <input type="text" name="shi" id="shi" style="width: 85%;" value="${cwhyh.shi}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>乡（镇）</label> <input type="text" name="xiang" id="xiang" style="width: 85%;" value="${cwhyh.xiang}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>村</label> <input type="text" name="cun" id="cun" style="width: 85%;" value="${cwhyh.cun}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<label>经纬度</label> <input type="text" name="jingwei" id="jingwei" style="width: 85%;" value="${cwhyh.jingwei}"/>
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
				<legend>村庄村域面积（平方公里）</legend> <input type="text" name="czcymj" id="czcymj" style="width: 85%;" value="${cwhyh.czcymj}"/>
			</fieldset>
			<fieldset style="width: 15%; float: left; margin-right: 1%;">
				<legend>现状建设用地面积（平方公里）</legend> <input type="text" name="xzjsyd" id="xzjsyd" style="width: 85%;" value="${cwhyh.xzjsyd}"/>
			</fieldset>
			<fieldset style="width: 15%; float: left; margin-right: 1%;">
				<legend>规划建设用地面积（平方公里）</legend> <input type="text" name="ghjsyd" id="ghjsyd" style="width: 85%;" value="${cwhyh.ghjsyd}"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>庭院用地面积（公顷/亩）</legend> <input type="text" name="tyydmj" id="tyydmj" style="width: 85%;" value="${cwhyh.tyydmj}"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>宅基地面积（公顷/亩）</legend> <input type="text" name="zjdmj" id="zjdmj" style="width: 85%;" value="${cwhyh.zjdmj}"/>
			</fieldset>
			<fieldset style="width: 13%; float: left; margin-right: 1%;">
				<legend>全村经济收入（万元）</legend> <input type="text" name="qcjjsr" id="qcjjsr" style="width: 85%;" value="${cwhyh.qcjjsr}"/>
			</fieldset>
			<fieldset style="width: 12%; float: left; margin-right: 1%;">
				<legend>人均纯收入（元）</legend> <input type="text" name="rjcsr" id="rjcsr" style="width: 85%;" value="${cwhyh.rjcsr}"/>
			</fieldset>
			<fieldset style="width: 20%; float: left; margin-right: 1%;">
				<legend>是否编制村庄规划？</legend>
				<select name="bzczgh" style="width: 85%;">
					<option value="1" <c:if test="${cwhyh.bzczgh=='1'}">selected</c:if>>是</option>
					<option value="2" <c:if test="${cwhyh.bzczgh=='2'}">selected</c:if>>否</option>
				</select>
			</fieldset>
			<div class="clear"></div>
		</div>
		</article>
		<input type="hidden" id="id" name="id" value="${cwhyh.id}">
		<article class="module width_full">
		<header>
		<h3>人口情况</h3>
		</header>
		<div class="module_content">
			
	<fieldset style="width: 15%; float: left;  margin-right: 1%;">
		<label>总户数（户）</label> <input type="text" name="zhs" id="zhs" style="width: 85%;" value="${cwhyh.zhs}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<label>总人口数（人）</label> <input type="text" name="zrks" id="zrks" style="width: 85%;" value="${cwhyh.zrks}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<label>男（人）</label> <input type="text" name="boy" id="boy" style="width: 85%;" value="${cwhyh.boy}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>女（人）</label> <input type="text" name="girl" id="girl" style="width: 85%;" value="${cwhyh.girl}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>外来人口（户）</label> <input type="text" name="wlrk1" id="wlrk1" style="width: 85%;" value="${cwhyh.wlrk1}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left; margin-left: 0.5%;margin-right: 1%;">
		<label>外来人口（人）</label> <input type="text" name="wlrk2" id="wlrk2" style="width: 85%;" value="${cwhyh.wlrk2}"/>
	</fieldset>
<div class="clear"></div>
<fieldset style="width: 25%; float: left;  margin-right: 1%;">
		<legend>平均五年内出生人口数（人）</legend> <input type="text" name="wncs" id="wncs" style="width: 85%;" value="${cwhyh.wncs}"/>
	</fieldset>
	<fieldset style="width: 25%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>平均五年内死亡人口数（人）</legend> <input type="text" name="wnsw" id="wnsw" style="width: 85%;" value="${cwhyh.wnsw}"/>
	</fieldset>
			<div class="clear"></div>
		</div>
			<header>
		<center><h3>职业构成</h3></center>
	</header>
<div class="module_content">
<fieldset style="width: 13%; float: left;  margin-right: 1%;">
		<legend>种植业</legend> <input type="text" name="zhy" id="zhy" style="width: 85%;" value="${cwhyh.zhy}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>养殖业</legend> <input type="text" name="yzy" id="yzy" style="width: 85%;" value="${cwhyh.yzy}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>工业</legend> <input type="text" name="gy" id="gy" style="width: 85%;" value="${cwhyh.gy}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left; margin-right: 1%;">
		<legend>商业</legend> <input type="text" name="sy" id="sy" style="width: 85%;" value="${cwhyh.sy}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>运输业</legend> <input type="text" name="ysy" id="ysy" style="width: 85%;" value="${cwhyh.ysy}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>外出打工</legend> <input type="text" name="wcdg" id="wcdg" style="width: 85%;" value="${cwhyh.wcdg}"/>
	</fieldset>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
		<legend>五保户</legend> <input type="text" name="wbh" id="wbh" style="width: 85%;" value="${cwhyh.wbh}"/>
	</fieldset>
<div class="clear"></div>
</div>

			<header>
		<center><h3>年龄构成</h3></center>
	</header>
<div class="module_content">
<fieldset style="width: 18%; float: left;  margin-right: 1%;">
		<legend>0 —— 6岁</legend>
		<input type="text" name="nlgc1" id="nlgc1" style="width: 85%;" value="${cwhyh.nlgc1}"/>
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>7 —— 12岁</legend>
		<input type="text" name="nlgc2" id="nlgc2" style="width: 85%;" value="${cwhyh.nlgc2}"/>
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>13 —— 18岁</legend>
		<input type="text" name="nlgc3" id="nlgc3" style="width: 85%;" value="${cwhyh.nlgc3}"/>
	</fieldset>
	<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>19 —— 60岁</legend>
		<input type="text" name="nlgc4" id="nlgc4" style="width: 85%;" value="${cwhyh.nlgc4}"/>
	</fieldset>
	<fieldset style="width: 18%; float: left;margin-right: 1%;">
		<legend>60岁以上</legend>
		<input type="text" name="nlgc5" id="nlgc5" style="width: 85%;" value="${cwhyh.nlgc5}"/>
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
					<input type="checkbox" style="margin-left: 0.5%;" value="1" id="ggfwss_1" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'1')}">checked=true</c:if> />小学
					<input type="checkbox" style="margin-left: 0.5%;" value="2" id="ggfwss_2" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'2')}">checked=true</c:if> />幼儿园
					<input type="checkbox" style="margin-left: 0.5%;" value="3" id="ggfwss_3" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'3')}">checked=true</c:if> />图书阅览室 
					<input type="checkbox" style="margin-left: 0.5%;" value="4" id="ggfwss_4" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'4')}">checked=true</c:if> />卫生室
					<input type="checkbox" style="margin-left: 0.5%;" value="5" id="ggfwss_5" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'5')}">checked=true</c:if> />室外活动场地
					<input type="checkbox" style="margin-left: 0.5%;" value="6" id="ggfwss_6" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'6')}">checked=true</c:if> />农村超市
					<input type="checkbox" style="margin-left: 0.5%;" value="7" id="ggfwss_7" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'7')}">checked=true</c:if> />运动休闲设施
					<input type="checkbox" style="margin-left: 0.5%;" value="8" id="ggfwss_8" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'8')}">checked=true</c:if> />信息服务站
					<input type="checkbox" style="margin-left: 0.5%;" value="9" id="ggfwss_9" name="ggfwss"  <c:if test="${fn:contains(cwhyh.ggfwss,'9')}">checked=true</c:if> />老年活动室
					<input type="checkbox" style="margin-left: 0.5%;" value="10"id="ggfwss_10" name="ggfwss" <c:if test="${fn:contains(cwhyh.ggfwss,'10')}">checked=true</c:if> />社区服务中心
					<input type="checkbox" style="margin-left: 0.5%;" value="11"id="ggfwss_11" name="ggfwss" <c:if test="${fn:contains(cwhyh.ggfwss,'11')}">checked=true</c:if> />商店
					<input type="checkbox" style="margin-left: 0.5%;" value="12"id="ggfwss_12" name="ggfwss" <c:if test="${fn:contains(cwhyh.ggfwss,'12')}">checked=true</c:if> />饭店
					<input type="checkbox" style="margin-left: 0.5%;" value="13"id="ggfwss_13" name="ggfwss" <c:if test="${fn:contains(cwhyh.ggfwss,'13')}">checked=true</c:if> />旅店
				</fieldset>
				<div class="clear"></div>
	<fieldset style="width: 25%; float: left;  margin-right: 1%;">
		<legend>村庄内硬化道路是否达到户户通？</legend><select name="yhdl" style="width: 85%;">
					<option value="1" <c:if test="${cwhyh.yhdl=='1'}">selected</c:if>>是</option>
					<option value="2" <c:if test="${cwhyh.yhdl=='2'}">selected</c:if>>否</option>
				</select>
	</fieldset>
	<fieldset style="width: 24%; float: left; margin-right: 1%;">
		<legend>自来水普及率（百分数）</legend> <input type="text" name="zlspj" id="zlspj" style="width: 85%;" value="${cwhyh.zlspj}"/>
	</fieldset>
	<fieldset style="width: 23%; float: left; margin-right: 1%;">
		<legend>有线电视覆盖率（百分数）</legend> <input type="text" name="yxdsfg" id="yxdsfg" style="width: 85%;" value="${cwhyh.yxdsfg}"/>
	</fieldset>
	<fieldset style="width: 23%; float: left; margin-right: 1%;">
		<legend>网络覆盖率（百分数）</legend> <input type="text" name="wlfgl" id="wlfgl" style="width: 85%;" value="${cwhyh.wlfgl}"/>
	</fieldset>
	<div class="clear"></div>
	<fieldset style="width: 13%; float: left;margin-right: 1%;">
	<legend>有无集中供暖</legend>
		<select name="ywjzgn" style="width: 85%;">
			<option value="1" <c:if test="${cwhyh.ywjzgn=='1'}">selected</c:if>>有</option>
			<option value="2" <c:if test="${cwhyh.ywjzgn=='2'}">selected</c:if>>无</option>
		</select>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用煤（户）</legend>
		<input type="text" name="rlmei" id="rlmei" style="width: 85%;" value="${cwhyh.rlmei}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用沼气（户）</legend>
		<input type="text" name="rlzhaoqi" id="rlzhaoqi" style="width: 85%;" value="${cwhyh.rlzhaoqi}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用液化气（户）</legend>
		<input type="text" name="rlyhq" id="rlyhq" style="width: 85%;" value="${cwhyh.rlyhq}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用电（户）</legend>
		<input type="text" name="rldian" id="rldian" style="width: 85%;" value="${cwhyh.rldian}"/>
	</fieldset>
	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>使用柴木（户）</legend>
		<input type="text" name="rlchaimu" id="rlchaimu" style="width: 85%;" value="${cwhyh.rlchaimu}"/>
	</fieldset>
	<div class="clear"></div>
	<fieldset style="width: 15%; float: left; margin-right: 1%;">
		<legend>使用太阳能（户）</legend>
		<input type="text" name="rltyn" id="rltyn" style="width: 85%;" value="${cwhyh.rltyn}"/>
	</fieldset>
<fieldset style="width: 25%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>煤、气、电、柴混合使用（户）</legend>
		<input type="text" name="rlhunhe" id="rlhunhe" style="width: 85%;" value="${cwhyh.rlhunhe}"/>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%;margin-right: 1%;">
	<legend>有无污水处理装置</legend>
		<select name="wsclzz" style="width: 85%;">
			<option value="1" <c:if test="${cwhyh.wsclzz=='1'}">selected</c:if>>有</option>
			<option value="2" <c:if test="${cwhyh.wsclzz=='2'}">selected</c:if>>无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>日污水处理量（吨）</legend>
		<input type="text" name="rwscll" id="rwscll" style="width: 85%;" value="${cwhyh.rwscll}"/>
	</fieldset>

	<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>污水处理率（%）</legend>
		<input type="text" name="wscll" id="wscll" style="width: 85%;" value="${cwhyh.wscll}"/>
	</fieldset>
	<div class="clear"></div>
<fieldset style="width: 18%; float: left; margin-right: 1%;">
		<legend>是否有污水排水管网</legend>
		<select name="sfwspsgw" style="width: 85%;">
			<option value="1" <c:if test="${cwhyh.sfwspsgw=='1'}">selected</c:if>>有</option>
			<option value="2" <c:if test="${cwhyh.sfwspsgw=='2'}">selected</c:if>>无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>垃圾无害化处理率（%）</legend>
		<input type="text" name="ljwhhcll" id="ljwhhcll" style="width: 85%;" value="${cwhyh.ljwhhcll}"/>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>公共厕所合格率（%）</legend>
		<input type="text" name="ggcshgl" id="ggcshgl" style="width: 85%;" value="${cwhyh.ggcshgl}"/>
	</fieldset>
<fieldset style="width: 15%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>厕所入室率（%）</legend>
		<input type="text" name="csrsl" id="csrsl" style="width: 85%;" value="${cwhyh.csrsl}"/>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>是否有防灾减灾设施</legend>
		<select name="sffzjz" style="width: 85%;">
			<option value="1" <c:if test="${cwhyh.sffzjz=='1'}">selected</c:if>>有</option>
			<option value="2" <c:if test="${cwhyh.sffzjz=='2'}">selected</c:if>>无</option>
		</select>
	</fieldset>
<fieldset style="width: 18%; float: left;margin-left: 0.5%; margin-right: 1%;">
		<legend>是否有灾害应急机制</legend>
		<select name="sfzhyjjz" style="width: 85%;">
			<option value="1" <c:if test="${cwhyh.sfzhyjjz=='1'}">selected</c:if>>有</option>
			<option value="2" <c:if test="${cwhyh.sfzhyjjz=='2'}">selected</c:if>>无</option>
		</select>
	</fieldset>
<div class="clear"/>
			<fieldset style="width: 100%; float: left;">
					<legend>制约农村环境综合治理存在的主要问题是什么？</legend>
					<input type="checkbox" style="margin-left: 0.5%;" value="1" id="zyzlzywt_1" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'1')}">checked=true</c:if> />农民生活习惯不好
					<input type="checkbox" style="margin-left: 0.5%;" value="2" id="zyzlzywt_2" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'2')}">checked=true</c:if> />资金投入不足
					<input type="checkbox" style="margin-left: 0.5%;" value="3" id="zyzlzywt_3" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'3')}">checked=true</c:if> />缺乏低廉的治理技术 
					<input type="checkbox" style="margin-left: 0.5%;" value="4" id="zyzlzywt_4" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'4')}">checked=true</c:if> />管理体制不健全
					<input type="checkbox" style="margin-left: 0.5%;" value="5" id="zyzlzywt_5" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'5')}">checked=true</c:if> />农村环境教育不深入
					<input type="checkbox" style="margin-left: 0.5%;" value="6" id="zyzlzywt_6" name="zyzlzywt"  <c:if test="${fn:contains(cwhyh.zyzlzywt,'6')}">checked=true</c:if> />缺乏专门的农村环保人才
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
		<legend>主导地形</legend> <input type="text" style="margin-left: 2%;" name="zddx" id="zddx" style="width: 98%;" value="${cwhyh.zddx}"/>
	</fieldset>
	<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
		<legend>人均湿地面积（必填）</legend> <input type="text" style="margin-left: 2%;" name="rjsd" id="rjsd" style="width: 98%;" value="${cwhyh.rjsd}"/>
	</fieldset>
	<div class="clear" />
			<fieldset style="width: 48.5%; float: left;">
				<legend>1.村庄内生活用水水质是否经过水质检测？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc1_1" name="stzc1" ${(cwhyh.stzc1=='1')?'checked' : ''}/>是
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc1_2" name="stzc1" ${(cwhyh.stzc1=='2')?'checked' : ''} />否
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>2.村庄内生活用水是否集中供应？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc2_1" name="stzc2" ${(cwhyh.stzc2=='1')?'checked' : ''}/>是
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc2_2" name="stzc2" ${(cwhyh.stzc2=='2')?'checked' : ''}/>否
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
					<legend>3.村庄供水量是否能满足村民生活需要？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc3_1" name="stzc3" ${(cwhyh.stzc3=='1')?'checked' : ''}/>水量充足 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc3_2" name="stzc3" ${(cwhyh.stzc3=='2')?'checked' : ''}/>基本满足
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc3_3" name="stzc3" ${(cwhyh.stzc3=='3')?'checked' : ''}/>不能满足
					<input type="radio" style="margin-left: 2%;" value="4" id="stzc3_4" name="stzc3" ${(cwhyh.stzc3=='4')?'checked' : ''}/>水量缺乏
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>4.村庄内水污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc4_1" name="stzc4" ${(cwhyh.stzc4=='1')?'checked' : ''}/>污染严重 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc4_2" name="stzc4" ${(cwhyh.stzc4=='2')?'checked' : ''}/>存在污染 
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc4_3" name="stzc4" ${(cwhyh.stzc4=='3')?'checked' : ''}/>无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>5.水如有污染，污染源主要为？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc5_1" name="stzc5" ${(cwhyh.stzc5=='1')?'checked' : ''}/>工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc5_2" name="stzc5" ${(cwhyh.stzc5=='2')?'checked' : ''}/>垃圾污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc5_3" name="stzc5" ${(cwhyh.stzc5=='3')?'checked' : ''}/>农药等化学药品污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc5_4" name="stzc5" ${(cwhyh.stzc5=='4')?'checked' : ''}/>其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>6.村庄内土壤污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc6_1" name="stzc6" ${(cwhyh.stzc6=='1')?'checked' : ''}/>污染严重
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc6_2" name="stzc6" ${(cwhyh.stzc6=='2')?'checked' : ''}/>存在污染
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc6_3" name="stzc6" ${(cwhyh.stzc6=='3')?'checked' : ''}/>无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>7.土壤如有污染，污染源主要为？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc7_1" name="stzc7" ${(cwhyh.stzc7=='1')?'checked' : ''}/>工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc7_2" name="stzc7" ${(cwhyh.stzc7=='2')?'checked' : ''}/>垃圾污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc7_3" name="stzc7" ${(cwhyh.stzc7=='3')?'checked' : ''}/>农药等化学药品污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc7_4" name="stzc7" ${(cwhyh.stzc7=='4')?'checked' : ''} />其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>8.村庄内空气污染情况如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="stzc8_1" name="stzc8" ${(cwhyh.stzc8=='1')?'checked' : ''} />污染严重 
					<input type="radio" style="margin-left: 2%;" value="2" id="stzc8_2" name="stzc8" ${(cwhyh.stzc8=='2')?'checked' : ''} />存在污染 
					<input type="radio" style="margin-left: 2%;" value="3" id="stzc8_3" name="stzc8" ${(cwhyh.stzc8=='3')?'checked' : ''} />无污染
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>9.空气如有污染，污染源主要为</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc9_1" name="stzc9" ${(cwhyh.stzc9=='1')?'checked' : ''}/>工业污染
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc9_2" name="stzc9" ${(cwhyh.stzc9=='2')?'checked' : ''}/>秸秆燃烧污染
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc9_3" name="stzc9" ${(cwhyh.stzc9=='3')?'checked' : ''}/>燃煤污染
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc9_4" name="stzc9" ${(cwhyh.stzc9=='4')?'checked' : ''}/>其他污染
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>10.村庄内居民健康情况如何？</legend>
					<input type="radio" value="1" id="stzc10_1" name="stzc10" ${(cwhyh.stzc10=='1')?'checked' : ''}/>良好，无癌症等恶性病
					<input type="radio" value="2" id="stzc10_2" name="stzc10" ${(cwhyh.stzc10=='2')?'checked' : ''}/>一般，有癌症等恶性病
					<input type="radio" value="3" id="stzc10_3" name="stzc10" ${(cwhyh.stzc10=='3')?'checked' : ''}/>不好，癌症等恶性病高发
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left;">
				<legend>11.村庄内绿化主要采取什么方式？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc11_1" name="stzc11" ${(cwhyh.stzc11=='1')?'checked' : ''}/>村集体主导
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc11_2" name="stzc11" ${(cwhyh.stzc11=='2')?'checked' : ''}/>村民自发
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc11_3" name="stzc11" ${(cwhyh.stzc11=='3')?'checked' : ''}/>村集体引导和村民自发相结合
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-left: 1.5%;">
					<legend>12.村庄周边林地情况如何？</legend>
					<input type="radio" value="1" id="stzc12_1" name="stzc12" ${(cwhyh.stzc12=='1')?'checked' : ''}/>很好
					<input type="radio" value="2" id="stzc12_2" name="stzc12" ${(cwhyh.stzc12=='2')?'checked' : ''}/>好
					<input type="radio" value="3" id="stzc12_3" name="stzc12" ${(cwhyh.stzc12=='3')?'checked' : ''}/>一般
					<input type="radio" value="4" id="stzc12_4" name="stzc12" ${(cwhyh.stzc12=='4')?'checked' : ''}/>不好
					<input type="radio" value="5" id="stzc12_5" name="stzc12" ${(cwhyh.stzc12=='5')?'checked' : ''}/>很差
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 98.5%; float: left;">
				<legend>13.村庄周边自然环境中野生动物种类情况如何？</legend>
						<input type="radio" style="margin-left: 2%;" value="1" id="stzc13_1" name="stzc13" ${(cwhyh.stzc13=='1')?'checked' : ''}/>野生动物种类多
						<input type="radio" style="margin-left: 2%;" value="2" id="stzc13_2" name="stzc13" ${(cwhyh.stzc13=='2')?'checked' : ''}/>野生动物种类逐步增加
						<input type="radio" style="margin-left: 2%;" value="3" id="stzc13_3" name="stzc13" ${(cwhyh.stzc13=='3')?'checked' : ''}/>有野生动物，但种类逐步减少
						<input type="radio" style="margin-left: 2%;" value="4" id="stzc13_3" name="stzc13" ${(cwhyh.stzc13=='4')?'checked' : ''}/>几乎无野生动物
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
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz1_1" name="jgxz1" ${(cwhyh.jgxz1=='1')?'checked' : ''}/>树枝状
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz1_2" name="jgxz1" ${(cwhyh.jgxz1=='2')?'checked' : ''}/>方格网
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz1_3" name="jgxz1" ${(cwhyh.jgxz1=='3')?'checked' : ''}/>半网络状
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz1_4" name="jgxz1" ${(cwhyh.jgxz1=='4')?'checked' : ''}/>自由式
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz1_5" name="jgxz1" ${(cwhyh.jgxz1=='5')?'checked' : ''}/>环状 
					<input type="radio" style="margin-left: 2%;" value="6" id="jgxz1_6" name="jgxz1" ${(cwhyh.jgxz1=='6')?'checked' : ''}/>放射状
					<input type="radio" style="margin-left: 2%;" value="7" id="jgxz1_7" name="jgxz1" ${(cwhyh.jgxz1=='7')?'checked' : ''}/>其他
					<input type="text" name="jgxz1_qita" id="jgxz1_qita"/>
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>2.乡村社区内主要道路两侧建筑建造时有没有什么特殊要求？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz2_1" name="jgxz2"  ${(cwhyh.jgxz2=='1')?'checked' : ''} />立面颜色统一
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz2_2" name="jgxz2"  ${(cwhyh.jgxz2=='2')?'checked' : ''}/>立面材质统一 
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz2_3" name="jgxz2"  ${(cwhyh.jgxz2=='3')?'checked' : ''}/>沿街建筑高度控制
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz2_4" name="jgxz2"  ${(cwhyh.jgxz2=='4')?'checked' : ''}/>其他
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz2_5" name="jgxz2"  ${(cwhyh.jgxz2=='5')?'checked' : ''}/>没有具体要求
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>3.作为管理者您认为本村居民的庭院目前急需解决的问题是？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz3_1" name="jgxz3" ${(cwhyh.jgxz3=='1')?'checked' : ''}/>环境卫生
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz3_2" name="jgxz3" ${(cwhyh.jgxz3=='2')?'checked' : ''}/>绿化种植
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz3_3" name="jgxz3" ${(cwhyh.jgxz3=='3')?'checked' : ''}/>基础设施（垃圾转运、排水设施等）
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>4.对于庭院基础设施您认为应最先解决的是？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz4_1" name="jgxz4" ${(cwhyh.jgxz4=='1')?'checked' : ''}/>整改厨房
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz4_2" name="jgxz4" ${(cwhyh.jgxz4=='2')?'checked' : ''}/>整改厕所
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz4_3" name="jgxz4" ${(cwhyh.jgxz4=='3')?'checked' : ''}/>垃圾处理
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz4_4" name="jgxz4" ${(cwhyh.jgxz4=='4')?'checked' : ''}/>污水排放
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>5.从广场位置、类型、尺度大小的角度方面，您觉得乡村社区内的广场在社区景观中的地位如何？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz5_1" name="jgxz5" ${(cwhyh.jgxz5=='1')?'checked' : ''}/>可代表乡村社区的形象
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz5_2" name="jgxz5" ${(cwhyh.jgxz5=='2')?'checked' : ''}/>算比较有特点吧
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz5_3" name="jgxz5" ${(cwhyh.jgxz5=='3')?'checked' : ''}/>一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz5_4" name="jgxz5" ${(cwhyh.jgxz5=='4')?'checked' : ''}/>排不上位置
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz5_5" name="jgxz5" ${(cwhyh.jgxz5=='5')?'checked' : ''}/>不值一提
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
				<legend>6.您觉得乡村社区内广场景观中的各类功能设施有哪些方面需要加强？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz6_1" name="jgxz6" <c:if test="${fn:contains(cwhyh.jgxz6,'1')}">checked=true</c:if>/>数量
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz6_2" name="jgxz6" <c:if test="${fn:contains(cwhyh.jgxz6,'2')}">checked=true</c:if>/>质量
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz6_3" name="jgxz6" <c:if test="${fn:contains(cwhyh.jgxz6,'3')}">checked=true</c:if>/>安全性
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz6_4" name="jgxz6" <c:if test="${fn:contains(cwhyh.jgxz6,'4')}">checked=true</c:if>/>与环境关系适宜性
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz6_5" name="jgxz6" <c:if test="${fn:contains(cwhyh.jgxz6,'5')}">checked=true</c:if>/>其他
					<input type="text" name="jgxz6_qita" id="jgxz6_qita"/>
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>7.您觉得乡村社区内广场景观还有哪些方面需要加强和提升？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz7_1" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'1')}">checked=true</c:if>/>空间布局
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz7_2" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'2')}">checked=true</c:if>/>绿化方面
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz7_3" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'3')}">checked=true</c:if>/>用地铺装
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz7_4" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'4')}">checked=true</c:if>/>建筑小品
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz7_5" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'5')}">checked=true</c:if>/>水体景观
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz7_6" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'6')}">checked=true</c:if>/>照明
					<input type="checkbox" style="margin-left: 2%;" value="7" id="jgxz7_7" name="jgxz7" <c:if test="${fn:contains(cwhyh.jgxz7,'7')}">checked=true</c:if>/>其他
					<input type="text" name="jgxz7_qita" id="jgxz7_qita"/>
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>8.您觉得乡村社区内绿地景观还有哪些方面需要加强和提升？（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz8_1" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'1')}">checked=true</c:if>/>植物搭配
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz8_2" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'2')}">checked=true</c:if>/>铺地的材料与形式
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz8_3" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'3')}">checked=true</c:if>/>小品构筑物的艺术性
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz8_4" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'4')}">checked=true</c:if>/>水体景观环境质量
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz8_5" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'5')}">checked=true</c:if>/>照明
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz8_6" name="jgxz8" <c:if test="${fn:contains(cwhyh.jgxz8,'6')}">checked=true</c:if>/>其他
					<input type="text" name="jgxz8_qita" id="jgxz8_qita"/>
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>9.您认为那种驳岸形式更值得采用？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz9_1" name="jgxz9" ${(cwhyh.jgxz9=='1')?'checked' : ''} />自然式草坡
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz9_2" name="jgxz9" ${(cwhyh.jgxz9=='2')?'checked' : ''}/>自然石砌筑
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz9_3" name="jgxz9" ${(cwhyh.jgxz9=='3')?'checked' : ''}/>规则是混凝土砌筑
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz9_4" name="jgxz9" ${(cwhyh.jgxz9=='4')?'checked' : ''}/>混合式驳岸
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 99%; float: left; margin-right: 1%;">
					<legend>10.您认为乡村社区河流，水系景观的哪些方面需要进行改善?（可多选）</legend>
					<input type="checkbox" style="margin-left: 2%;" value="1" id="jgxz10_1" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'1')}">checked=true</c:if>/>水质恢复
					<input type="checkbox" style="margin-left: 2%;" value="2" id="jgxz10_2" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'2')}">checked=true</c:if>/>水体自然形态恢复
					<input type="checkbox" style="margin-left: 2%;" value="3" id="jgxz10_3" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'3')}">checked=true</c:if>/>乡土植物恢复
					<input type="checkbox" style="margin-left: 2%;" value="4" id="jgxz10_4" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'4')}">checked=true</c:if>/>文化历史恢复
					<input type="checkbox" style="margin-left: 2%;" value="5" id="jgxz10_5" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'5')}">checked=true</c:if>/>滨水活动空间改善
					<input type="checkbox" style="margin-left: 2%;" value="6" id="jgxz10_6" name="jgxz10" <c:if test="${fn:contains(cwhyh.jgxz10,'6')}">checked=true</c:if>/>基础设施改善
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>11.您认为现在村庄内的河道水网是否需要进行改造？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz11_1" name="jgxz11" ${(cwhyh.jgxz11=='1')?'checked' : ''} />需要
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz11_2" name="jgxz11" ${(cwhyh.jgxz11=='2')?'checked' : ''} />不需要
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>12.如需要，您希望改造的方面是？</legend>
					<input type="text" name="xwgjdfm" id="xwgjdfm" style="width: 96%;" value="${cwhyh.xwgjdfm}"/>
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>13.您对目前乡村社区景观对文化的再现和传承是否满意？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz12_1" name="jgxz12" ${(cwhyh.jgxz12=='1')?'checked' : ''} />非常满意
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz12_2" name="jgxz12" ${(cwhyh.jgxz12=='2')?'checked' : ''} />满意
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz12_3" name="jgxz12" ${(cwhyh.jgxz12=='3')?'checked' : ''} />一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz12_4" name="jgxz12" ${(cwhyh.jgxz12=='4')?'checked' : ''} />不满意
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>14.您觉得乡村社区特色景观营造中应该加强建设的问题是什么？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz13_1" name="jgxz13" ${(cwhyh.jgxz13=='1')?'checked' : ''} />反映乡村历史风貌
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz13_2" name="jgxz13" ${(cwhyh.jgxz13=='2')?'checked' : ''} />体现新农村发展特色
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz13_3" name="jgxz13" ${(cwhyh.jgxz13=='3')?'checked' : ''} />以上两者
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz13_4" name="jgxz13" ${(cwhyh.jgxz13=='4')?'checked' : ''} />无所谓
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 98%; float: left; margin-right: 1%;">
					<legend>15.乡村社区景观需要进行哪些方面的改造？（可多选）</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz14_1" name="jgxz14" ${(cwhyh.jgxz14=='1')?'checked' : ''} />建筑景观
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz14_2" name="jgxz14" ${(cwhyh.jgxz14=='2')?'checked' : ''} />绿化种植
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz14_3" name="jgxz14" ${(cwhyh.jgxz14=='3')?'checked' : ''} />加入一些北方特色景观
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz14_4" name="jgxz14" ${(cwhyh.jgxz14=='4')?'checked' : ''} />只需要整治环境，没必要进行大的改造
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz14_5" name="jgxz14" ${(cwhyh.jgxz14=='5')?'checked' : ''} />其他
				</fieldset>
				<div class="clear" />

				<fieldset style="width: 98%; float: left; margin-right: 1%;">
					<legend>16.本村有以下哪些人文景观？</legend>
					<input type="checkbox" style="margin-left: 1%;" value="1" id="jgxz15_1" name="jgxz15" <c:if test="${fn:contains(cwhyh.jgxz15,'1')}">checked=true</c:if>/>文物古迹
					<input type="checkbox" style="margin-left: 1%;" value="2" id="jgxz15_2" name="jgxz15" <c:if test="${fn:contains(cwhyh.jgxz15,'2')}">checked=true</c:if>/>革命活动地
					<input type="checkbox" style="margin-left: 1%;" value="3" id="jgxz15_3" name="jgxz15" <c:if test="${fn:contains(cwhyh.jgxz15,'3')}">checked=true</c:if>/>现代经济、技术、文化、艺术、科学活动场所（如农业观光园、展览馆等）
					<input type="checkbox" style="margin-left: 1%;" value="4" id="jgxz15_4" name="jgxz15" <c:if test="${fn:contains(cwhyh.jgxz15,'4')}">checked=true</c:if>/>地区和民族的特殊人文景观（如风俗、手工艺等）
					<input type="checkbox" style="margin-left: 1%;" value="5" id="jgxz15_5" name="jgxz15" <c:if test="${fn:contains(cwhyh.jgxz15,'5')}">checked=true</c:if>/>无
				</fieldset>
				<div class="clear" />
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>16.1 如有文物景观保存的怎么样？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz16_1" name="jgxz16" ${(cwhyh.jgxz16=='1')?'checked' : ''}/>非常好
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz16_2" name="jgxz16" ${(cwhyh.jgxz16=='2')?'checked' : ''}/>较好
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz16_3" name="jgxz16" ${(cwhyh.jgxz16=='3')?'checked' : ''}/>一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz16_4" name="jgxz16" ${(cwhyh.jgxz16=='4')?'checked' : ''}/>较差
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz16_5" name="jgxz16" ${(cwhyh.jgxz16=='5')?'checked' : ''}/>非常差
				</fieldset>
				<fieldset style="width: 48.5%; float: left; margin-right: 1%;">
					<legend>16.2 如有文物景观，利用的怎么样？</legend>
					<input type="radio" style="margin-left: 2%;" value="1" id="jgxz17_1" name="jgxz17" ${(cwhyh.jgxz17=='1')?'checked' : ''}/>非常好
					<input type="radio" style="margin-left: 2%;" value="2" id="jgxz17_2" name="jgxz17" ${(cwhyh.jgxz17=='2')?'checked' : ''}/>较好
					<input type="radio" style="margin-left: 2%;" value="3" id="jgxz17_3" name="jgxz17" ${(cwhyh.jgxz17=='3')?'checked' : ''}/>一般
					<input type="radio" style="margin-left: 2%;" value="4" id="jgxz17_4" name="jgxz17" ${(cwhyh.jgxz17=='4')?'checked' : ''}/>较差
					<input type="radio" style="margin-left: 2%;" value="5" id="jgxz17_5" name="jgxz17" ${(cwhyh.jgxz17=='5')?'checked' : ''}/>非常差
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