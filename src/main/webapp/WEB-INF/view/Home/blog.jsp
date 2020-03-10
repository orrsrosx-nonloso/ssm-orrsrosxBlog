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
    <title>文章列表</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="google" content="notranslate">
    <meta name="keywords" content="Fechin,">

    <meta name="author" content="Hanoch Ma">
    <link rel="alternative" href="https://hanochma.github.io/2019/06/01/talkThis2/atom.xml" title="Hanoch - 保持专注" type="application/atom+xml">

    <link rel="stylesheet" href="/css/gitalk.css">
    <link rel="stylesheet" href="/css/diaspora.css">
    <script src="/css/osd.js"></script><script src="/css/ca-pub-8691406134231910.js">

</script>


    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-8691406134231910",
            enable_page_level_ads: true
        });
    </script>
    <link rel="preload" href="https://pagead2.googlesyndication.com/pagead/js/r20190624/r20190131/show_ads_impl.js" as="script">
    <script async="" custom-element="amp-auto-ads" src="/css/amp-auto-ads-0.1.js">
    </script>
    <style class="loaderstyle" id="loaderstyle1536">@-moz-keyframes loader1536{100%{background-position:1536px 0}}@-webkit-keyframes loader1536{100%{background-position:1536px 0}}.loader1536{-webkit-animation:loader1536 3s linear infinite;-moz-animation:loader1536 3s linear infinite;}</style></head>
<body class="">

<style>
    .entry-title{}
    .entry-title a{
        color: black;
    }
    .entry-title a :hover{
        color: #00F7DE;
    }

</style>

<div id="preview" style="min-height: 722px; position: static; overflow-y: auto;" class="show"><div id="single">

    <div id="top" style="display: block;">
        <div id="mydiv"></div>
        <div style="z-index: 11; "class="bar" style="width: 0;"></div>


        <a style="z-index: 11; "  class="icon-home image-icon" href="/"></a>
        <div style="z-index: 11; " title="播放/暂停" class="icon-play"></div>



        <div style="z-index: 101; " class="social">
              <div>
                <div class="share">
                    <a title="获取二维码" class="icon-scan" href="javascript:;"></a>
                </div>
                <div id="qr"></div>
            </div>
        </div>
        <div style="z-index: 11; " class="scrollbar" style="width: 0px;"></div>
    </div>

    <div  class="section">

        <div class="article">

            <div style="z-index: 11;opacity: 0.8;" class="main">
                <h1 class="title">文章列表</h1>
                <div class="stuff">
                    <span>最新更新时间：2019-7-2</span>


                </div>
                <div class="content markdown">
                    <div style="width: 100%;" id="primary"  class="content-area">

                        <main id="main" class="site-main" role="main">
                            <c:forEach items="${pageInfo.list}" var="a">

                                <article style="width: 100%;" class="post type-post">

                                    <figure class="thumbnail">
                                        <a href="/article/${a.articleId}">
                                            <img width="280" height="210"
                                                 src="/uploads/random/img_${a.articleId%15}.jpg"
                                                 class="attachment-content size-content wp-post-image"
                                                 alt="${a.articleTitle}">
                                        </a>
                                        <span class="cat">
                                <a href="/category/${a.categoryList[a.categoryList.size()-1].categoryId}">
                                        ${a.categoryList[a.categoryList.size()-1].categoryName}
                                </a>
                            </span>
                                    </figure>

                                    <header class="entry-header">
                                        <h2 style="float: left;" class="entry-title">
                                            <a  href="/article/${a.articleId}"
                                               rel="bookmark">
                                                    ${a.articleTitle}
                                            </a>
                                        </h2>
                                    </header>
                                    <br>
                                    <div   class="entry-content">

                                        <span class="title-l"></span>

                                        <span class="entry-meta">
                            <span class="date">
                                <fmt:formatDate value="${a.articleCreateTime}" pattern="yyyy年MM月dd日"/>
                            &nbsp;&nbsp;
                            </span>
                            <span class="views">
                                <i class="fa fa-eye"></i>
                                    ${a.articleViewCount} views
                            </span>
                            <span class="comment">&nbsp;&nbsp;
                                <a href="/article/${a.articleId}#comments" rel="external nofollow">
                                  <i class="fa fa-comment-o"></i>

                                </a>
                            </span>
                        </span>
                                        <div class="clear"></div>
                                    </div><!-- .entry-content -->

                                    <span class="entry-more">
                        <a href="/article/${a.articleId}"
                           rel="bookmark">
                            阅读全文
                        </a>
                    </span>
                                </article>
                            </c:forEach>
                        </main>
                        <%@ include file="Public/part/paging.jsp" %>
                    </div>
                </div>

            </div>

        </div>


    </div>
</div>

</div>
<%@ include file="Public/part/footer.jsp" %>


<script type="text/javascript">
    window.onload = function() {
        //配置
        var config = {
            vx: 4,	//小球x轴速度,正为右，负为左
            vy: 4,	//小球y轴速度
            height: 2,	//小球高宽，其实为正方形，所以不宜太大
            width: 2,
            count: 240,		//点个数
            color: "155, 137, 137", 	//点颜色
            stroke: "155, 137, 137", 		//线条颜色
            dist: 6400, 	//点吸附距离
            e_dist: 20000, 	//鼠标吸附加速距离
            max_conn: 12 	//点到点最大连接数
        }

        //调用
        CanvasParticle(config);
    }
</script>
<script type="text/javascript" src="/js/canvas-particle.js"></script>

<script src="/css/jquery.min.js"></script>
<script src="/css/plugin.js"></script>
<script src="/css/diaspora.js"></script>
<link rel="stylesheet" href="/css/photoswipe.css">
<link rel="stylesheet" href="/css/default-skin.css">
<script src="/css/photoswipe.min.js"></script>
<script src="/css/photoswipe-ui-default.min.js"></script>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
<script src="/js/superfish.js"></script>
<script src='/js/sticky.js'></script>
<script src="/js/script.js"></script>
<script src="/plugin/layui/layui.all.js"></script>



</body></html>