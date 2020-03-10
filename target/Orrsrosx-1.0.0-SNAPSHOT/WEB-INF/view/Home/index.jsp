<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=72000"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="applicable-device" content="pc,mobile">
    <meta name="MobileOptimized" content="width"/>
    <meta name="HandheldFriendly" content="true"/>
    <link rel="shortcut icon" href="/uploads/2019/7/users.png">
    <meta charset="utf-8">
    <title>Orr的个人小站</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/vendor.css">


    <!-- script
    ================================================== -->
    <script src="/js/modernizr.js"></script>
    <script src="/js/pace.min.js"></script>



</head>

<body id="top">

<!-- header
================================================== -->
<header>
    <div class="row">

        <div class="top-bar">
            <a class="menu-toggle" href="#"><span>Menu</span></a>

            <div class="logo">
                <a href="/">KARDS</a>
            </div>

            <nav id="main-nav-wrap">
                <ul class="main-navigation">
                    <li class="current"><a class="smoothscroll"  href="#intro" title="">Home</a></li>
                    <li><a   href="/blog" title="">Blog</a></li>
                    <li><a class="smoothscroll"  href="#about" title="">About</a></li>

                    <li><a class="smoothscroll"  href="#contact" title="">End ？</a></li>
                </ul>
            </nav>
        </div> <!-- /top-bar -->

    </div> <!-- /row -->
</header> <!-- /header -->

<!-- intro section
================================================== -->
<section id="intro">

    <div class="intro-overlay"></div>

    <div class="intro-content">
        <div class="row">

            <div class="col-twelve">

                <h5>Hello, World.</h5>
                <h1>I'm OrrsRosx/Yun</h1>

                <p class="intro-position">
                    <span> Hey, lad, don't lose heart</span>
                </p>

                <a class="button stroke smoothscroll" href="#about" title="">More About Me</a>

                <a class="button stroke" href="/blog" title=""> TO My Blog </a>

            </div>

        </div>
    </div> <!-- /intro-content -->

    <ul class="intro-social">
        <li><a href="https://www.facebook.com/yun.allan"><i class="fa fa-facebook"></i></a></li>
        <li><a href="https://github.com/1073280291"><i class="fa fa-github"></i></a></li>
        <li><a href="https://twitter.com/OrrsRosx"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://github.com/1073280291"><i class="fa fa-weibo"></i></a></li>
        <li><a href="https://www.zhihu.com/people/hu-yun-8-12-23/activities"><i class="fa fa-comments-o"></i></a></li>
    </ul> <!-- /intro-social -->

</section> <!-- /intro -->
<!-- about section
================================================== -->
<section id="about">

    <div class="row section-intro">
        <div class="col-twelve">
            <h1>About Me</h1>

            <div class="intro-info">

                <img src="/uploads/2019/profile-pic.jpg" alt="Profile Picture">

                <p class="lead">一个很普通普通的伪技术宅，将成为传说中的全栈技术牛（以后会改）。目前离目标还很远，所以所以所以继续看下去把！！！</p>
            </div>

        </div>
    </div> <!-- /section-intro -->

    <div class="row about-content">

        <div class="col-six tab-full">

            <h3>个人简介</h3>

            <ul class="info-list">
                <li>
                    <strong>姓 名：</strong>
                    <span>胡 云（浮云）</span>
                </li>
                <li>
                    <strong>英文名：</strong>
                    <span>Orrsrose/Orrsrosx</span>
                </li>
                <li>
                    <strong>其他称谓：</strong>
                    <span>jizelaoshi</span>
                </li>
                <li>
                    <strong>个人爱好：</strong>
                    <span>读书、夜跑、篮球、撸代码、追骨王</span>
                </li>
                <li>
                    <strong>Email:</strong>
                    <span>1073280291@qq.com</span>
                </li>

            </ul> <!-- /info-list -->

        </div>

        <div class="col-six tab-full">

            <h3>能力</h3>
            <ul class="skill-bars">
                <li>
                    <div class="progress percent70"><span>70%</span></div>
                    <strong>HTML5/CSS3</strong>
                </li>
                <li>
                    <div class="progress percent55"><span>55%</span></div>
                    <strong>JS/JQ</strong>
                </li>
                <li>
                    <div class="progress percent5"><span>5%</span></div>
                    <strong>PHP</strong>
                </li>
                <li>

                    <div class="progress percent5"><span>5%</span></div>
                    <strong>NodeJs</strong>
                </li>
                <li>

                    <div class="progress percent30"><span>30%</span></div>
                    <strong>Java</strong>
                </li>

            </ul> <!-- /skill-bars -->

        </div>

    </div>

</section> <!-- /process-->



<!-- stats Section
================================================== -->
<section id="stats" class="count-up">

    <div class="row">
        <div class="col-twelve">

            <div class="block-1-6 block-s-1-3 block-tab-1-2 block-mob-full stats-list">

                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="fa fa-book"></i>
                    </div>

                    <h3 class="stat-count">
                        210
                    </h3>

                    <h5 class="stat-title">
                        Reading
                    </h5>

                </div> <!-- /stat -->
                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="icon-pencil-ruler"></i>
                    </div>

                    <h3 class="stat-count">
                        8
                    </h3>

                    <h5 class="stat-title">
                        Projects Completed
                    </h5>

                </div> <!-- /stat -->

                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="fa fa-text-height"></i>
                    </div>

                    <h3 class="stat-count">
                        9500
                    </h3>

                    <h5 class="stat-title">
                        lines of code
                    </h5>

                </div> <!-- /stat -->

                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="icon-clock"></i>
                    </div>

                    <h3 class="stat-count">
                        803
                    </h3>

                    <h5 class="stat-title">
                        Think of you
                    </h5>

                </div> <!-- /stat -->

                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="fa fa-moon-o"></i>
                    </div>

                    <h3 class="stat-count">
                        110
                    </h3>

                    <h5 class="stat-title">
                        Night jogging
                    </h5>

                </div> <!-- /stat -->

                <div class="bgrid stat">

                    <div class="icon-part">
                        <i class="fa fa-calendar-check-o"></i>
                    </div>

                    <h3 class="stat-count">
                        620
                    </h3>

                    <h5 class="stat-title">
                        Work Hours
                    </h5>

                </div> <!-- /stat -->

            </div> <!-- /stats-list -->

        </div> <!-- /twelve -->
    </div> <!-- /row -->

</section> <!-- /stats -->


<!-- contact
================================================== -->
<section id="contact">

    <div class="row section-intro">
        <div class="col-twelve">

            <h4>END?</h4>
            <h4>START?</h4>
            <h1>I choose you. And I'll choose you over and over and over. Without pause, without a doubt, in a heartbeat. I'll keep choosing you.</h1>
        </div>
    </div> <!-- /section-intro -->

</section> <!-- /contact -->


<!-- footer
================================================== -->

<footer>
    <div class="row">

        <div class="col-six tab-full pull-right social">

            <ul class="footer-social">
                <li><a href="https://www.facebook.com/yun.allan"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://github.com/1073280291"><i class="fa fa-github"></i></a></li>
                <li><a href="https://twitter.com/OrrsRosx"><i class="fa fa-twitter"></i></a></li>
                <li><a href="https://github.com/1073280291"><i class="fa fa-weibo"></i></a></li>
                <li><a href="https://www.zhihu.com/people/hu-yun-8-12-23/activities"><i class="fa fa-comments-o"></i></a></li>
            </ul>

        </div>

        <div class="col-six tab-full">
            <div class="copyright">
                <span>© Copyright Orrsrosx 2018.</span>
            </div>
        </div>

        <div id="go-top">
            <a class="smoothscroll" title="Back To Top" href="#top"><img src="/uploads/2019/gotop.png" alt=""></a>
        </div>

    </div> <!-- /row -->
</footer>

<div id="preloader">
    <div id="loader"></div>
</div>

<!-- Java Script
================================================== -->
<script src="/js/jquery-2.1.3.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/js/plugins.js"></script>
<script src="/js/main.js"></script>

</body>

</html>