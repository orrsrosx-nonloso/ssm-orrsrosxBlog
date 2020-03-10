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
    <title>${article.articleTitle}</title>
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




<div id="preview" style="min-height: 722px; position: static; overflow-y: auto;" class="show"><div id="single">
    <div id="top" style="display: block;">
        <div style="z-index: 11; " class="bar" style="width: 0;"></div>
        <div style="z-index: 11; " id="mydiv"></div>>

        <a style="z-index: 11; "class="icon-home image-icon" href="/blog"></a>
        <div style="z-index: 11; "  title="播放/暂停" class="icon-play"></div>



        <div style="z-index: 11; " class="social">

            <div>
                <div class="share">
                    <a title="获取二维码" class="icon-scan" href="javascript:;"></a>
                </div>
                <div id="qr"></div>
            </div>
        </div>
        <div  class="scrollbar" style="width: 0px;"></div>

    </div>
    <div class="section">
        <div class="article">
            <div style="z-index: 11;opacity: 0.8; " class="main">
                <h1 class="title">${article.articleTitle}</h1>
                <div class="stuff">
                    <span><fmt:formatDate value="${a.articleCreateTime}" pattern="yyyy年MM月dd日"/>${a.articleCreateTime}</span>


                </div>
                <div class="content markdown">
                    <div  style="width: 100%;" id="primary" class="content-area">
                        <main id="main" class="site-main" role="main">
                            <article style="width: 100%;" class="post" id="articleDetail" data-id="${article.articleId}">
                                <header class="entry-header">
                                    <h1 class="entry-title">
                                        ${article.articleTitle}
                                    </h1>
                                </header><!-- .entry-header -->
                                <div class="entry-content">
                                    <div class="single-content">
                                        ${article.articleContent}
                                    </div>

                                    <div class="clear"></div>
                                    <div id="social">
                                        <div class="social-main">
                            <span class="like">
                                <a href="javascript:;" data-action="ding" data-id="1" title="点赞"
                                   class="favorite" onclick="increaseLikeCount()">
                                    <i class="fa fa-thumbs-up"></i>赞
                                    <i class="count"
                                       id="count-${article.articleId}">${article.articleLikeCount}</i>
                                </a>
                            </span>
                                            <div class="shang-p">
                                                <div class="shang-empty"><span></span></div>
                                                <span class="shang-s">
                                    <a <%--onclick="PaymentUtils.show();"--%> style="cursor:pointer">餮</a>
                                </span>
                                            </div>
                                            <div class="share-sd">
                                        <span class="share-s" style="margin-top: 25px!important;">
                                            <a href="javascript:void(0)" id="share-s" title="分享">
                                                <i class="fa fa-share-alt"></i>分享
                                            </a>
                                        </span>

                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>

                                    <footer class="single-footer">
                                        <ul class="single-meta">


                                            <li class="views">
                                                <i class="fa fa-eye"></i> <span
                                                    class="articleViewCount">${article.articleViewCount}</span>
                                                views
                                            </li>

                                        </ul>

                                        <div class="single-cat-tag">
                                            <div class="single-cat">所属分类：
                                                <c:forEach items="${article.categoryList}" var="c">
                                                    <a href="#">
                                                            ${c.categoryName}
                                                    </a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </footer><!-- .entry-footer -->


                                    <div class="clear"></div>
                                </div><!-- .entry-content -->
                            </article><!-- #post -->




                            <%--版权声明 start--%>
                            <div style="width: 100%;" class="authorbio wow fadeInUp">
                                <img alt="${article.user.userNickname}" src="${article.user.userAvatar}"
                                     class="avatar avatar-64 photo" height="64" width="64">
                                <ul class="postinfo">
                                    <li></li>
                                    <li><strong>版权声明：</strong>本站原创文章（非原创会注明），于<fmt:formatDate
                                            value="${article.articleCreateTime}"
                                            pattern="yyyy-MM-dd"/>，由
                                        <strong>
                                            ${article.user.userNickname}
                                        </strong>
                                        发表。
                                    </li>
                                    <li class="reprinted"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转载请注明：</strong>
                                        <a href="/article/${article.articleId}"
                                           rel="bookmark"
                                           title="本文固定链接 /article/${article.articleId}">
                                            ${article.articleTitle} |&nbsp;from&nbsp;&nbsp;${article.user.userNickname}</a>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </div>


                            <%--上一篇下一篇 start--%>
                            <nav style="width: 100%" class="nav-single">
                                <c:choose>
                                    <c:when test="${preArticle!=null}">
                                        <a href="/article/${preArticle.articleId}" rel="next">
                            <span class="meta-nav">
                                <span class="post-nav">上一篇
                                 <i class="fa fa-angle-left"></i>
                                </span>
                                <br>${preArticle.articleTitle}
                            </span>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                              <span class="meta-nav">
                                    <span class="post-nav">
                                        没有了<br>
                                    </span>已是第一篇文章
                                </span>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${afterArticle!=null}">
                                        <a href="/article/${afterArticle.articleId}" rel="next">
                            <span class="meta-nav">
                                <span class="post-nav">下一篇
                                 <i class="fa fa-angle-right"></i>
                                </span>
                                <br>${afterArticle.articleTitle}
                            </span>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                            <span class="meta-nav">
                                <span class="post-nav">
                                    没有了<br>
                                </span>已是最后文章
                             </span>
                                    </c:otherwise>
                                </c:choose>

                                <div class="clear"></div>
                            </nav>
                            <%--上一篇下一篇 end--%>
                        </main>
                        <!-- .site-main -->
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
            count: 250,		//点个数
            color: "155, 137, 137", 	//点颜色
            stroke: "155, 137, 137", 		//线条颜色
            dist: 6500, 	//点吸附距离
            e_dist: 20000, 	//鼠标吸附加速距离
            max_conn: 14 	//点到点最大连接数
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
<link rel="stylesheet" href="/css/highlight.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
<script src="/js/superfish.js"></script>
<script src='/js/sticky.js'></script>
<script src="/js/script.js"></script>
<script src="/plugin/layui/layui.all.js"></script>
<style>
    .entry-title {
        background: #f8f8f8;
    }
</style>





</body></html>