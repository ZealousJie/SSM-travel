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
<link rel="stylesheet" href="css/bootstrap.min.css"  />
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
            <li><a href="<%=basePath%>/content.jsp">关于我们</a></li></ul>
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
    <li class="active">关于马尔代夫</li>
  </ol>
  <div class="col-md-12">
    <div class="list-title">关于马尔代夫</div>
    <div class="row yhzc-main">
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="summary">
          <div class="col-md-4 img"><img src="img/yhzc.png" class="img-responsive"></div>
          <div class="col-md-8 content">
            <h4><a href="">马尔代夫上南博会推介旅游及海产品</a></h4>
            <p>都喜天阙马尔代夫度假村距离首都马累仅35分钟水飞和10分钟快艇。现代泰国典雅室内设计与传统马尔代夫建筑融合得淋漓精致。</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    <div class="page pull-right">
  
  	</div>
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
          <a title="分享到一键通" class="bshare-bsharesync" href="javascript:void(0);"></a> <a title="分享到QQ空间" class="bshare-qzone"></a> <a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a> <a title="分享到人人网" class="bshare-renren" href="javascript:void(0);"></a> <a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a> </div>
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
