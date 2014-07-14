<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宜居乡村社区健康调查平台</title>

<!--- CSS --->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<script type="text/javascript">
	$(document).ready(function() {
		var back = "${ifok}";
		if (back.indexOf("1") != -1) {
			alert("感谢您的填写！再见")
			return;
		}
	});
</script>

</head>
<body>
	<div id="container">
		<div class="welcome">
			<div class="welcome-user">欢迎参加宜居乡村社区健康调查!</div>
			<div class="welcome-text">本次宜居乡村社区调研是“十二•五”国家科技支撑计划重大项目“村镇宜居社区与小康住宅重大科技工程”中的课题“乡村社区环境优化 建设关键技术研究”的重要内容之一。本课题将开展农村生活垃圾分类收集与转运技术；因地制宜的农村有机垃圾生物处理与资源化利用 技术；宜居社区人文环境建设和整治技术；宜居社区自然生态环境保护与建设技术；宜居社区景观营造技术等方面内容的研究工作，本课 题研究成果将结合示范试点，进行推广应用,谢谢您的支持。</div>
		</div>
	</div>

	<div id="footer">
		<a href="initsu">普通居民入口</a>&nbsp&nbsp <a href="initsp">村委会用户入口</a>&nbsp&nbsp <a href="login">管理员入口</a>&nbsp&nbsp <br> <br> Copyright &copy; 2014. <a target="_blank" href="https:github.com/alexmaven">Alex</a>. All rights reserved.
	</div>
</body>
</html>