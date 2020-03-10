package com.orrsrosx.ssm.blog.controller.admin;


import com.orrsrosx.ssm.blog.modle.User;
import com.orrsrosx.ssm.blog.service.UserService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



@Controller
@RequestMapping("/admin/user")
public class BackUserController {

    @Autowired
    private UserService userService;

    /**
     * 后台用户列表显示
     *
     * @return
     */
    @RequestMapping(value = "")
    public ModelAndView userList()  {
        ModelAndView modelandview = new ModelAndView();

        List<User> userList = userService.listUser();
        modelandview.addObject("userList",userList);

        modelandview.setViewName("Admin/User/index");
        return modelandview;

    }

    /**
     * 后台添加用户页面显示
     *
     * @return
     */
    @RequestMapping(value = "/insert")
    public ModelAndView insertUserView()  {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("Admin/User/insert");
        return modelAndView;
    }

    /**
     * 检查用户名是否存在
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/checkUserName",method = RequestMethod.POST)
    @ResponseBody// 表示该方法的返回结果直接写入 HTTP response body 中，一般在异步获取数据时使用
    public String checkUserName(HttpServletRequest request)  {
        Map<String, Object> map = new HashMap<String, Object>();
        String username = request.getParameter("username");
        User user = userService.getUserByName(username);
        int id = Integer.valueOf(request.getParameter("id"));
        //用户名已存在,但不是当前用户(编辑用户的时候，不提示)
        if(user!=null) {
            if(user.getUserId()!=id) {
                map.put("code", 1);
                map.put("msg", "用户名已存在！");
            }
        } else {
            map.put("code",0);
            map.put("msg","");
        }
        String result = new JSONObject(map).toString();
        return result;
    }

    /**
     * 后台添加用户页面提交
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/insertSubmit",method = RequestMethod.POST)
    public String insertUserSubmit(User user)  {
        User user2 = userService.getUserByName(user.getUserName());
        User user3 = userService.getUserByEmail(user.getUserEmail());
        if(user2==null&&user3==null) {
            user.setUserRegisterTime(new Date());
            user.setUserStatus(1);
            userService.insertUser(user);
        }
        return "redirect:/admin/user";
    }

    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete/{id}")
    public String deleteUser(@PathVariable("id") Integer id)  {
        userService.deleteUser(id);
        return "redirect:/admin/user";
    }

    /**
     * 基本信息页面显示
     *
     * @return
     */
    @RequestMapping(value = "/profile")
    public ModelAndView userProfileView(HttpSession session)  {

        ModelAndView modelAndView = new ModelAndView();
        User sessionUser = (User) session.getAttribute("user");
        User user =  userService.getUserById(sessionUser.getUserId());
        modelAndView.addObject("user",user);

        modelAndView.setViewName("Admin/User/profile");
        return modelAndView;
    }
}
