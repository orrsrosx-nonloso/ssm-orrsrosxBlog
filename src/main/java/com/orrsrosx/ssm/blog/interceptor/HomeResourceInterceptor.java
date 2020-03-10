package com.orrsrosx.ssm.blog.interceptor;

import com.orrsrosx.ssm.blog.modle.Article;



import com.orrsrosx.ssm.blog.modle.Category;
import com.orrsrosx.ssm.blog.service.*;
import com.orrsrosx.ssm.blog.util.ArticleStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Component
public class HomeResourceInterceptor implements HandlerInterceptor {
    @Autowired
    private ArticleService articleService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 在请求处理之前执行，该方法主要是用于准备资源数据的，然后可以把它们当做请求属性放到WebRequest中
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws IOException {

        

        List<Category> categoryList = categoryService.listCategory();
        request.setAttribute("allCategoryList", categoryList);

        //获得网站概况
        List<String> siteBasicStatistics = new ArrayList<String>();
        siteBasicStatistics.add(articleService.countArticle(ArticleStatus.PUBLISH.getValue()) + "");
        siteBasicStatistics.add(categoryService.countCategory() + "");
        siteBasicStatistics.add(articleService.countArticleView() + "");
        request.setAttribute("siteBasicStatistics", siteBasicStatistics);
        //最后更新的文章
        Article lastUpdateArticle = articleService.getLastUpdateArticle();
        request.setAttribute("lastUpdateArticle", lastUpdateArticle);

        //页脚显示
        //博客基本信息显示(Options)
       
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView)  {
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e)  {

    }
}