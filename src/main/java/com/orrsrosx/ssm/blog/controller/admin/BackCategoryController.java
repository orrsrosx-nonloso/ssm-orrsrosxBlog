package com.orrsrosx.ssm.blog.controller.admin;


import com.orrsrosx.ssm.blog.modle.Category;

import com.orrsrosx.ssm.blog.service.ArticleService;
import com.orrsrosx.ssm.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;



@Controller
@RequestMapping("/admin/category")
public class BackCategoryController {

    @Autowired
    private ArticleService articleService;


    @Autowired
    private CategoryService categoryService;

    /**
     * 后台分类列表显示
     *
     * @return
     */
    @RequestMapping(value = "")
    public ModelAndView categoryList()  {
        ModelAndView modelandview = new ModelAndView();
        List<Category> categoryList = categoryService.listCategoryWithCount();
        modelandview.addObject("categoryList",categoryList);
        modelandview.setViewName("Admin/Category/index");
        return modelandview;

    }


    /**
     * 删除分类
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete/{id}")
    public String deleteCategory(@PathVariable("id") Integer id)  {
        //禁止删除有文章的分类
        int count = articleService.countArticleByCategoryId(id);

        if (count == 0) {
            categoryService.deleteCategory(id);
        }
        return "redirect:/admin/category";
    }

}
