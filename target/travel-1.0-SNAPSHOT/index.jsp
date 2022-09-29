<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    HttpSession session1 = request.getSession();
    String aFalse = (String) session1.getAttribute("false");
    boolean flag = false;
    if(aFalse!=null && aFalse.length()>0){
        flag = true;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <base href="<%=basePath%>">
    <title></title>
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=basePath%>/css/style.css">
</head>
<body onload="zhuXiao()">
<div class="wrapper header col-xs-12">
    <div class="container nav-wrapper">
        <div class="head-top">
            <div class="logo col-md-6 col-sm-4 col-xs-12"><img src="<%=basePath%>/img/login.png"></div>
            <div class="logo-right col-md-6 col-sm-8 col-xs-12">
                <div class="search col-md-12 col-sm-12"> <i class="taobao"></i> <i class="sina"></i> <i class="wx"></i>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"> </div>
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
                    <li style="line-height: 40px;display: inline;float: right;color: #00a0e9" onclick="insert1()"><a style="font-size: 16px;margin-left: 80px">管理员入口</a></li>
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
            <div class="item active"> <img src="<%=basePath%>/img/banner1.jpg" alt="...">
                <div class="carousel-caption-con">
                    <div class="container">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="banner-title">今日推荐</div>
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
            <div class="item"> <img src="<%=basePath%>/img/banner2.jpg" alt="...">
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
            <div class="item"> <img src="<%=basePath%>/img/banner3.jpg" alt="...">
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
    <div class="main col-md-12">
        <div class="row products">
            <div class="col-md-4 col-sm-4 col-xs-12">
                <a href="#" target="_blank">
                    <img src="<%=basePath%>/${hot.get(0).spic}" class="img-responsive"></a>
                <div class="products_title">${hot.get(0).sname}</div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <a href="#" target="_blank">
                    <img src="<%=basePath%>/${hot.get(1).spic}" class="img-responsive"></a>
                <div class="products_title">${hot.get(1).sname}</div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <a href="#" target="_blank">
                    <img src="<%=basePath%>/${hot.get(2).spic}" class="img-responsive"></a>
                <div class="products_title">${hot.get(2).sname}</div>
            </div>
        </div>
        <div class="row news">
            <div class="col-md-4 col-sm-4 col-xs-12"><!--img src="img/main1.png" class="img-responsive"-->

                <div class="kePublic">
                    <!--效果html开始-->
                    <div class="mkeFocus">
                        <div class="mkeUl">
                            <ul>
                                <c:forEach items="${discount}" var="dorder">
                                    <li><b class="bg"></b><b class="text">${dorder.order.name}</b><a href="${pageContext.request.contextPath}/hotel1?oid=${dorder.order.id}&price=${dorder.dprice}" target="_blank"><img src="<%=basePath%>/${dorder.dpic}" /></a><p class="yj">原价：${dorder.order.price}元/人</p><p class="xj">现价：${dorder.dprice}元/人</p></li>
                                </c:forEach>
                            </ul>
                            <div class="mkeLbtn"></div>
                            <div class="mkeRbtn"></div>
                        </div>
                    </div>
                    <!--效果html结束-->
                    <div class="tejia"></div>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12">
                <div class="row">
                    <div class="col-md-12 index_news_list">
                        <h4><a href="#">2013.04.18爱情喜剧电影《马尔代夫遇见爱》</a></h4>
                        <div class="minute">截至昨日，参加南博会的南亚国家已经确认展位748个，比去年第五届南亚国家商品展增长了30.2%。马尔代夫的展位虽然不如巴基斯坦、斯里兰卡、印度等国，但其主要推介的海洋产品和旅游项目非常具有特色。</div>
                    </div>
                    <div class="col-md-12 index_news_list">
                        <h4><a href="#">2013.04.18爱情喜剧电影《马尔代夫遇见爱》</a></h4>
                        <div class="minute">截至昨日，参加南博会的南亚国家已经确认展位748个，比去年第五届南亚国家商品展增长了30.2%。马尔代夫的展位虽然不如巴基斯坦、斯里兰卡、印度等国，但其主要推介的海洋产品和旅游项目非常具有特色。</div>
                    </div>
                    <div class="col-md-12 index_news_list">
                        <h4><a href="#">2013.04.18爱情喜剧电影《马尔代夫遇见爱》</a></h4>
                        <div class="minute">截至昨日，参加南博会的南亚国家已经确认展位748个，比去年第五届南亚国家商品展增长了30.2%。马尔代夫的展位虽然不如巴基斯坦、斯里兰卡、印度等国，但其主要推介的海洋产品和旅游项目非常具有特色。</div>
                    </div>
                    <div class="col-md-12 index_news_list">
                        <h4><a href="#">2013.04.18爱情喜剧电影《马尔代夫遇见爱》</a></h4>
                        <div class="minute">截至昨日，参加南博会的南亚国家已经确认展位748个，比去年第五届南亚国家商品展增长了30.2%。马尔代夫的展位虽然不如巴基斯坦、斯里兰卡、印度等国，但其主要推介的海洋产品和旅游项目非常具有特色。</div>
                    </div>
                </div>
            </div>
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
            <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="<%=basePath%>/img/wx_link.png" class="img-responsive"></a></div>
            <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="<%=basePath%>/img/taobao_link.png" class="img-responsive"></a></div>
            <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="<%=basePath%>/img/wb_link.png" class="img-responsive"></a></div>
        </div>
        <div class="copyright col-md-12">
            <p>版权所有：XXX旅游咨询   咨询电话：XXX 传真：XXX</p>
            <p>XXX 邮编：XXX     </p>
        </div>
    </div>
</div>
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script language="javascript">
    function insert1(){
        $.ajax({
            url:"${pageContext.request.contextPath}/highRole",
            dataType:"text",
            type:"get",
            success:function (data) {
                console.log(data);
                if(data == "true"){
                    window.location.href="<%=basePath%>/admin/index.html";
                }
                else{
                    alert("非管理员无法进入");
                }
            }
        });
    }


    var rnum=$(".mkeUl ul li").size();
    var cnum=0;
    $(".mke_ns2").html(rnum);
    $(".mkeUl ul").width(rnum*367);
    $(".mkeRbtn").click(function(){
        cnum++;
        if(cnum>(rnum-1)){
            cnum=0
        }
        $(".mkeUl ul").animate({"left":-cnum*367},300);
        $(".mke_ns1").html(cnum+1);
    });
    $(".mkeLbtn").click(function(){
        cnum--;
        if(cnum<0){
            cnum=rnum-1;
        }
        $(".mkeUl ul").animate({"left":-cnum*367},300);
        $(".mke_ns1").html(cnum+1);
    });

    function autoPlay(){
        cnum++;
        if(cnum>(rnum-1)){
            cnum=0
        }
        $(".mkeUl ul").animate({"left":-cnum*367},300);
        $(".mke_ns1").html(cnum+1);
    }
    var Timer=setInterval(autoPlay,4000);
    $(".mkeFocus").hover(function(){clearInterval(Timer)},function(){Timer=setInterval(autoPlay,4000);});
</script>
<script language="javascript">


    var myDate = new Date();
    var y =	myDate.getFullYear();    //获取完整的年份(4位,1970-????)
    var M =	myDate.getMonth();       //获取当前月份(0-11,0代表1月)
    var D =	myDate.getDate();        //获取当前日(1-31)
    var week =	myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
    var days=[ "日 ", "一 ", "二 ", "三 ", "四 ", "五 ", "六 ",]
    var H =	myDate.getHours();       //获取当前小时数(0-23)
    var Mt =	myDate.getMinutes();     //获取当前分钟数(0-59)
    time ='马尔代夫　'+y+'年'+(M<10 ? "0"+ M : M)+'月'+(D<10 ? "0"+ D : D)+'日'+' '+'星期'+days[week];
    bjtime = (H<10 ? "0"+ H : H)+':'+(Mt<10 ? "0"+ Mt : Mt);
    mdtime = (H<10 ? "0"+ H+2 : H+2)+':'+(Mt<10 ? "0"+ Mt : Mt);
    $(".weather .title").text(time);
    $(".bjtime").text(bjtime);
    $(".mdtime").text(mdtime);
</script>
<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>
</body>
</html>

