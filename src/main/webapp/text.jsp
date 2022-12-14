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
	  <li class="active">关于马尔代夫</li>
	</ol>
	<div class="col-md-12">
		<div class="list-title">关于马尔代夫</div>
		<div class="content-main">
			　　XXX旅行网隶属于北京英派云锦旅行社有限公司，专注于操作马尔代夫自由行。XXX努力打造权威专业的服务态度，精心打造专业的客服部门，采用一对一的服务模式为广大消费者制定专属的马尔代夫之旅。我们坚持顾客为本的服务理念，坚持不懈狠抓服务质量，在市场上赢得了良好的口碑。我公司代理马尔代夫80余家酒店，与新航美佳航空海航等有着广泛的合作关系，确保我们的价格竞争力和快速反应能力。<br>

　　XXX箴言：荣辱与共的核心团队；不找借口的执行团队；打则能胜的高效团队；淘汰弱者的良性团队；善找商机的创新团队。<br>

　　旅游线路如何进行网上预订？<br>

　　在XXX官方网站,您可以通过网上客服咨询或预定线路，由专业客服给您提供专业的咨询服务。<br>

　　是否可以在线支付？<br>

　　您可以通过XXX淘宝店铺，通过支付宝支付。其他支付方式包括对公账户汇款，对私账户汇款，如果您在北京或者在北京有亲朋好友，可以来我公司支付现金。<br>

　　如何签订合同协议？<br>

　　北京地区的客人可以直接来我们公司签订旅游合同，外地客户可以通过传真或者直接快递合同原件签订。<br>

　　预订并付款后有出团通知书吗？<br>

　　在您预订旅游线路并付款后,我们会在您出发前提供一份出团通知书,其中包括集合的时间地点、航班、入住的酒店、团队的行程、紧急联系人，物品准备清单，出入境卡模板、注意事项等<br>
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
