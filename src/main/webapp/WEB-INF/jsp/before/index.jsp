<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Worthy</title>
    <meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
    <meta name="author" content="htmlcoder.me">

    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico">

    <!-- Web Fonts -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Plugins -->
    <link href="${pageContext.request.contextPath}/css/animations.css" rel="stylesheet">

    <!-- Worthy core CSS file -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
</head>

<body class="no-trans">
<!-- scrollToTop -->
<!-- ================ -->
<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

<!-- header start -->
<!-- ================ -->
<header class="header fixed clearfix navbar navbar-fixed-top">
    <div class="container">
        <div class="row">
            <div class="col-md-4">

                <!-- header-left start -->
                <!-- ================ -->
                <div class="header-left clearfix">

                    <!-- logo -->
                    <div class="logo smooth-scroll">
                        <a href="#banner"><img id="logo" src="${pageContext.request.contextPath}/images/logo.png" alt="小禅院"></a>
                    </div>

                    <!-- name-and-slogan -->
                    <div class="site-name-and-slogan smooth-scroll">
                        <div class="site-name"><a href="#">小禅院</a></div>
                        <div class="site-slogan">www.xcy.com</div>
                    </div>

                </div>
                <!-- header-left end -->

            </div>
            <div class="col-md-8">

                <!-- header-right start -->
                <!-- ================ -->
                <div class="header-right clearfix">

                    <!-- main-navigation start -->
                    <!-- ================ -->
                    <div class="main-navigation animated">

                        <!-- navbar start -->
                        <!-- ================ -->
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="container-fluid">

                                <!-- Toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="#banner">主页</a></li>
                                        <li><a href="#about">关于我们</a></li>
                                        <li><a href="#services">我的博客</a></li>
                                        <li><a href="#portfolio">我的项目</a></li>
                                        <li><a href="#clients">留言板</a></li>
                                        <li><a href="#contact">联系我们</a></li>
                                    </ul>
                                </div>

                            </div>
                        </nav>
                        <!-- navbar end -->

                    </div>
                    <!-- main-navigation end -->

                </div>
                <!-- header-right end -->

            </div>
        </div>
    </div>
</header>
<!-- header end -->

<!-- banner start -->
<!-- ================ -->
<div id="banner" class="banner">
    <div class="banner-image"></div>
    <div class="banner-caption">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 object-non-visible" data-animation-effect="fadeIn">
                    <h2 class="text-center">不要怀有渺小的 <span>梦想</span>，它们无法打动人心</h2>
                    <p class="lead text-center">最初所拥有的只是梦想，以及毫无根据的自信而已。但是，所有的一切就从这里出发</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 id="about" class="title text-center">关于 <span>我们</span></h1>
                <p class="lead text-center">未来的我会感谢现在的自己</p>
                <div class="space"></div>
                <div class="row">
                    <div class="col-md-6">
                        <img src="${pageContext.request.contextPath}/images/section-image-1.png" alt="">
                        <div class="space"></div>
                    </div>
                    <div class="col-md-6">
                        <p>属于自己的第一个网站，作为记录自己从java小白一步一步成长起来的见证着</p>
                        <p>主要内容分为两部分</p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-caret-right pr-10 text-colored"></i> 我的博客 </li>
                            <li><i class="fa fa-caret-right pr-10 text-colored"></i> 我的项目历程 </li>
                            <li><i class="fa fa-caret-right pr-10 text-colored"></i> 我的工作经历 </li>
                            <li><i class="fa fa-caret-right pr-10 text-colored"></i> 我的随心吐槽 </li>
                        </ul>
                    </div>
                </div>
                <div class="space"></div>
                <h2>团队介绍</h2>
                <div class="row">
                    <div class="col-md-6">
                        团队介绍
                    </div>
                    <div class="col-md-6">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <%--从数据库中拿到团队成员的名字，简介，QQ，vx，手机号--%>
                                <c:forEach items="${speakerList}" var="speaker">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#${speaker.id}" aria-expanded="true" aria-controls="collapseOne">
                                            ${speaker.speakerName}
                                        </a>
                                    </h4>
                                </div>
                                <div id="${speaker.id}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        ${speaker.speakerDesc}
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- section end -->

<!-- section start -->
<!-- ================ -->
<div class="section translucent-bg bg-image-1 blue">
    <div class="container object-non-visible" data-animation-effect="fadeIn">
        <h1 id="services"  class="text-center title">All Boke</h1>
        <div class="space"></div>
        <div class="row">
            <div class="col-sm-12">
                <c:forEach items="${bokeList}" var="boke">
                <div class="media">
                    <!-- <div class="media-left">
                        <i class="fa fa-cog"></i>
                    </div> -->
                    <div class="media-body text-left">
                        <h4 class="media-heading">${boke.bokeTitle}</h4>
                        <p>${boke.bokeSummary}</p>
                        <span class="tianjia">${boke.speakerName}</span>
                        <span class="tianjia">${boke.readNum}</span>
                        <span class="tianjia">${boke.createTime}</span>
                        <span class="tianjia">${boke.keyWord}</span>
                    </div>

                </div>
                </c:forEach>
            </div>

        </div>
    </div>
</div>
<!-- section end -->

<!-- section start -->
<!-- ================ -->
<div class="default-bg space blue">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h1 class="text-center">Let's happy work Together!</h1>
            </div>
        </div>
    </div>
</div>
<!-- section end -->


<!-- section start -->
<!-- ================ -->
<div class="section">
    <div class="container">
        <h1 class="text-center title" id="portfolio">项目展示</h1>
        <div class="separator"></div>
        <p class="lead text-center">团队所做项目展示</p>
        <br>
        <div class="row object-non-visible" data-animation-effect="fadeIn">
            <div class="col-md-12">

                <!-- isotope filters start -->
                <div class="filters text-center">
                    <ul class="nav nav-pills">
                        <li class="active"><a href="#" data-filter="*">所有项目</a></li>
                        <%--里面是从数据库那到的数据，项目类型--%>
                        <c:forEach items="">
                            <li><a href="#" data-filter=".web-design">Web design</a></li>
                            <li><a href="#" data-filter=".app-development">App development</a></li>
                            <li><a href="#" data-filter=".site-building">Site building</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- isotope filters end -->

                <!-- portfolio items start -->

                <div class="isotope-container row grid-space-20">

                    <C:forEach items="${projectList}" var="project">
                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <%--项目展示图片，从数据库查询--%>
                                <img src="${project.imageOneUrl}" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-1">
                                    <i class="fa fa-search-plus"></i>
                                    <span>${project.skillType}</span>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#${project.id}">${project.projectName}</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="${project.id}" tabindex="-1" role="dialog" aria-labelledby="project-1-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-1-label">${project.projectName}</h4>
                                    </div>
                                    <div class="modal-body">
                                        <h3>${project.skillType}</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                ${project.detail}
                                            </div>
                                            <div class="col-md-6">

                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner" role="listbox">
                                                        <div class="item active">
                                                            <img src="${project.imageOneUrl}" alt="...">
                                                        </div>
                                                        <div class="item">
                                                            <img src="${project.imageTwoUrl}" alt="...">
                                                        </div>
                                                        <div class="item">
                                                            <img src="${project.imageThreeUrl}" alt="...">
                                                        </div>
                                                        <div class="item">
                                                            <img src="${project.imageFourUrl}" alt="...">
                                                        </div>
                                                        <div class="item">
                                                            <img src="${project.imageFiveUrl}" alt="...">
                                                        </div>
                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href=" " role="button" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="modal-footer">
                                        <%--项目跳转到写好的项目，按钮加跳转，地址从数据库中获得--%>
                                        <button type="button" href="${project.projectBeforeUrl}" class="btn btn-sm btn-default" data-dismiss="modal">项目链接</button>
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">关闭</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                </C:forEach>
                </div>

                <!-- portfolio items end -->

            </div>
        </div>
    </div>
</div>
<!-- section end -->

<!-- section start -->
<!-- ================ -->
<div class="section translucent-bg bg-image-2 pb-clear">
    <div class="container object-non-visible" data-animation-effect="fadeIn">
        <h1 id="clients" class="title text-center">留言板</h1>
        <%--数据库查询留言内容--%>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-1.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">You are Amazing!</h3>
                        <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-2.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Yeah!</h3>
                        <blockquote>
                            <p>Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-3.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Thank You!</h3>
                        <blockquote>
                            <p>Aperiam consequatur quo quis exercitationem reprehenderit suscipit iste placeat.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-2.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Thank You!</h3>
                        <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-3.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Amazing!</h3>
                        <blockquote>
                            <p>Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media testimonial">
                    <div class="media-left">
                        <img src="${pageContext.request.contextPath}/images/testimonial-1.png" alt="">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Best!</h3>
                        <blockquote>
                            <p>Aperiam consequatur quo quis exercitationem reprehenderit suscipit iste placeat.</p>
                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section start -->
    <!-- ================ -->
    <div class="translucent-bg blue">
        <div class="container">
            <div class="list-horizontal">
                <div class="row">
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-1.png" alt="client">
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-2.png" alt="client">
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-3.png" alt="client">
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-4.png" alt="client">
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-5.png" alt="client">
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="list-horizontal-item">
                            <img src="${pageContext.request.contextPath}/images/client-6.png" alt="client">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section end -->
</div>
<!-- section end -->

<!-- section start -->
<!-- ================ -->
<div class="default-bg space">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h1 class="text-center">10000+ Happy Clients!</h1>
            </div>
        </div>
    </div>
</div>
<!-- section end -->

<!-- footer start -->
<!-- ================ -->
<footer id="footer">

    <!-- .footer start -->
    <!-- ================ -->
    <div class="footer section">
        <div class="container">
            <h1 class="title text-center" id="contact">联系我们</h1>
            <div class="space"></div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="footer-content">
                        <p class="large">欢迎任何同仁向我们提出宝贵意见</p>
                        <ul class="list-icons">
                            <li>联系人： 杨爱民</li>
                            <li>地址：</li>
                            <li>电话：13103825148</li>
                            <li>QQ：254720930</li>
                            <li>微信：13103825148</li>
                            <li>邮箱：254720930@qq.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="footer-content">
                        <form role="form" id="footer-form">
                            <div class="form-group has-feedback">
                                <label class="sr-only" for="name2">Name</label>
                                <input type="text" class="form-control" id="name2" placeholder="Name" name="name2" required>
                                <i class="fa fa-user form-control-feedback"></i>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="sr-only" for="email2">Email address</label>
                                <input type="email" class="form-control" id="email2" placeholder="Enter email" name="email2" required>
                                <i class="fa fa-envelope form-control-feedback"></i>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="sr-only" for="message2">Message</label>
                                <textarea class="form-control" rows="8" id="message2" placeholder="Message" name="message2" required></textarea>
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                            <input type="submit" value="Send" class="btn btn-default">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .footer end -->

    <!-- .subfooter start -->
    <!-- ================ -->
    <div class="subfooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-center">
                        个人博客
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript files placed at the end of the document so the pages load faster
================================================== -->
<!-- Jquery and Bootstap core js files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

<!-- Modernizr javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/modernizr.js"></script>

<!-- Isotope javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/isotope/isotope.pkgd.min.js"></script>

<!-- Backstretch javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.backstretch.min.js"></script>

<!-- Appear javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.appear.js"></script>

<!-- Initialization of Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/template.js"></script>

<!-- Custom Scripts -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

</body>
</html>
