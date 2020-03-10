package com.orrsrosx.ssm.blog.controller.home;

import com.github.pagehelper.PageInfo;



import com.orrsrosx.ssm.blog.modle.*;
import com.orrsrosx.ssm.blog.service.*;
import com.orrsrosx.ssm.blog.util.ArticleStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;


@Controller
public class IndexController {

    @Autowired
    private ArticleService articleService;


    @RequestMapping("/")
    public String index1(){
        return "Home/index";
    }

    @RequestMapping("/blog")
    public String index(@RequestParam(required = false, defaultValue = "1") Integer pageIndex,
                        @RequestParam(required = false, defaultValue = "10") Integer pageSize,String status, Model model) {
        HashMap<String, Object> criteria = new HashMap<>(1);
        criteria.put("status", ArticleStatus.PUBLISH.getValue());
        //文章列表
        if (status == null) {
            model.addAttribute("pageUrlPrefix", "?pageIndex");
        } else {
            criteria.put("status", status);
            model.addAttribute("pageUrlPrefix", "?status=" + status + "&pageIndex");
        }
        PageInfo<Article> articleList = articleService.pageArticle(pageIndex, pageSize, criteria);
        model.addAttribute("pageInfo", articleList);




        //侧边栏显示
            return "Home/blog";
    }


}




