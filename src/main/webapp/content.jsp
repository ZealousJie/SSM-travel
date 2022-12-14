<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="wrapper header col-xs-12">
  <div class="container nav-wrapper">
    <div class="head-top">
      <div class="logo col-md-6 col-sm-4 col-xs-12"><img src="img/login.png"></div>
      <div class="logo-right col-md-6 col-sm-8 col-xs-12">
        <div class="search col-md-12 col-sm-12"> <i class="taobao"></i> <i class="sina"></i> <i class="wx"></i>

        </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>
<!--导航-->
<div class="navs">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="<%=basePath%>/ajax.jsp">首页</a> </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
			<li><a href="<%=basePath%>/find">主题旅游</a></li>
			<li><a href="<%=basePath%>/hotOrder">热门目的地</a></li>
			<li><a href="<%=basePath%>/text.jsp">旅游需知</a></li>
			<li><a href="<%=basePath%>/content.jsp">关于我们</a></li>
        </ul>
		  <ul style="list-style: none;margin-left: 50px;height: 40px">
			  <li style="line-height: 40px;display: inline;float: right;color: #00a0e9"><a href="<%=basePath%>/admin/all-admin-login.html" style="font-size: 16px;margin-left: 80px">登录</a></li>
			  <li style="line-height: 40px;display: inline;float: right;color: #00a0e9"><a href="<%=basePath%>/zhuXiao" style="font-size: 16px;margin-left: 80px">注销</a></li>
			  <li style="line-height: 40px;display: inline;float: right;color: #00a0e9"><a href="<%=basePath%>/profile" style="font-size: 16px;margin-left: 80px">个人中心</a></li>
			  <li style="line-height: 40px;display: inline;float: right;color: #00a0e9"><a href="<%=basePath%>/highRole" style="font-size: 16px;margin-left: 80px">管理员入口</a></li>
		  </ul>
      </div>
    </div>
  </nav>
</div>
<div class="clearfix"></div>
<!--banner-->
<div class="banner">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
      <div class="item active"> <img src="img/banner1.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">XXX</div>
	          <p>蜜月尽在马尔代夫 </p>
	          <p>咨询电话：XXX</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="80" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
      <div class="item"> <img src="img/banner2.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">浪漫沙滩的气味</div>
	          <p>你是风儿我是沙 </p>
	          <p>咨询电话：XXX</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
      <div class="item"> <img src="img/banner3.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">蔚蓝色的心跳</div>
	          <p>让心情随波浪跳动 </p>
	          <p>咨询电话：XXX</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
    </div>
    
    <!-- Controls --> 
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a> 
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a> </div>
</div>
<div class="container">
	<ol class="breadcrumb">
	  <li>你的位置：</li>
	  <li><a href="#">首页</a></li>
	  <li><a href="#">关于马尔代夫</a></li>
	  <li class="active">马尔代夫宗教风俗及其文化</li>
	</ol>
	<div class="col-md-8 main">
		<h2>马尔代夫宗教风俗及其文化</h2>
		<div class="content-main">
			　    马尔代夫的面积是118,000 平方公里（其中陆地300平马尔代夫马尔代夫方公里），共有1192个岛屿(其中有人定居岛199 座) ，构成20个环礁 。国旗呈长方形，长与宽之比为3:2。国旗由红、绿、白三种颜色组成。旗地为绿色长方形，四周为红边。红边的宽度为全旗宽度的四分之一，绿色长方形的宽度为全旗宽度的一半。一牙白色新月位于绿色长方形的正中。红色象征为国家主权和独立而献身的民族英雄的鲜血；绿色意味着生命、进步和繁荣；白色新月表示和平、安宁和马尔代夫人民对伊斯兰教的信仰。由一弯新月、一颗五角星、两面国旗、一棵海椰子树和绶带构成。新月和五角星表示马尔代夫的国教 为伊斯兰教，国旗象征国家的权力和尊严，海椰子树代表人民的生计。底端的绶带上写着马尔代夫的传统名称。[1]<br>

　　语言官方语言为迪维希语，上层社会通用英语。<br/>

　　海拔平均海拔1.2米。海平面正以每年两厘米上升。预计该国家在往后50年左右将消失。<br>

　　首都马累(Malé)，位于同名的马累岛上。人口10.8万（2009年）。日最高温度31℃，最低温度26℃。全国政治、经济中心，同时也是贸易港口，经济上除了渔业及水产品加工外，近年来旅游业发展很快，建有国际机场。<br>

　　节日国庆日/独立日：7月26日（1965年）。圣纪日 在伊斯兰教历的第三个月的第十二天，是穆罕默德诞辰纪念日。马尔代夫共和国（原名马尔代夫群岛，1969年4月改为现名）位于南亚，是印度洋上一个岛国，由1200余个小珊瑚岛屿组成，其中202个岛屿有人居住。东北与斯里兰卡相距675公里，北部与印度的米尼科伊岛相距约113公里，面积300平方公里，是亚洲最小的国家。马尔代夫南部的赤道海峡和一度半海峡为海上交通要道。马尔代夫基于环境因素，境内无法建设铁路，但仍设有易卜拉欣纳西尔国际机场。该国虽然国土偏小，建国也不久，但有很多节日，同时该国也是个伊斯兰教国家。马尔代夫亦被誉为“上帝抛洒人间的项链”，“印度洋上人间最后的乐园”。
		</div>
	</div>
	<div class="col-md-4">
		<div class="list-title">关于马尔代夫</div>
		<ul class="content-list">
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫气候与时差</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫历史沿革</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫宗教风俗及其文化</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫旅游信息</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫购物</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫美食</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">马尔代夫活动</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">袖珍国都-马累</a></li>
		</ul>
	</div>
</div>
<div class="wrapper footer">
  <div class="service">
    <div class="container">
    	<div class="col-md-3 col-sm-12">
    		<div class="link_logo"></div>
    	</div>
    	<div class="col-md-6 col-sm-12">
    		<div class="link_tel"></div>
    	</div>
    	<div class="col-md-3 col-sm-12 fx">
    		<div class="bshare-custom icon-medium">
    			<div class="bsPromo bsPromo2"></div>
				<a title="分享到一键通" class="bshare-bsharesync" href="javascript:void(0);"></a>
				<a title="分享到QQ空间" class="bshare-qzone"></a>
				<a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a>
				<a title="分享到人人网" class="bshare-renren" href="javascript:void(0);"></a>
				<a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
			</div>
			<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
			<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
		</div>
    </div>
  </div>
  <div class="container">
    <div class="friendlink">
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/wx_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/taobao_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/wb_link.png" class="img-responsive"></a></div>
    </div>
    <div class="copyright col-md-12">
      <p>版权所有：XXX旅游咨询   咨询电话：XXX 传真：XXX</p>
      <p>XXX 邮编：XXX     </p>
    </div>
  </div>
</div>
<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
</body>
</html>
