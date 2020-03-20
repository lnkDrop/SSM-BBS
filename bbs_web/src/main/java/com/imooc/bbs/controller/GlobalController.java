package com.imooc.bbs.controller;

import com.imooc.bbs.biz.CommentBiz;
import com.imooc.bbs.biz.PostBiz;
import com.imooc.bbs.biz.UserBiz;
import com.imooc.bbs.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Administrator on 2019/12/18.
 */
@Controller("globalController")
@RequestMapping("/bbs")
public class GlobalController {
    @Autowired
    UserBiz userBiz;
    @Autowired
    CommentBiz commentBiz;
    @Autowired
    PostBiz postBiz;

    @RequestMapping("/list")
    public String List(Map<String, Object> map) {
        map.put("list", postBiz.getAll());
        return "list";
    }

    @RequestMapping(value = "/to_post", params = "pid")
    public String toPost(Integer pid, Map<String, Object> map) {
        map.put("comment", commentBiz.getByPostId(pid));
        map.put("post", postBiz.get(pid));
        return "post";
    }

    @RequestMapping("/to_login")
    public String toLogin() {
        return "login";
    }

    /*登录*/
    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String username, @RequestParam String password) {
        User user = userBiz.Login(username, password);
        if (user == null) {
            return "redirect:to_login";
        } else {
            session.setAttribute("user", user);
            return "redirect:list";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("user", null);
        return "redirect:list";
    }

    @RequestMapping("/to_list")
    public String list() {
        return "list";
    }

    /*注册*/
    @RequestMapping("/to_register")
    public String toRegister() {
        return "register";
    }

    @RequestMapping("/register")
    public String register(User user, @RequestParam String password, @RequestParam String password_confirm) {

        /*判断两次输入密码是否相同*/
        if (!password.equals(password_confirm)) {
            return "redirect:to_register";
        }
        userBiz.register(user);
        return "redirect:to_login";
    }


}
