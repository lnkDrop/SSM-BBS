package com.imooc.bbs.controller;

import com.imooc.bbs.biz.CommentBiz;
import com.imooc.bbs.biz.PostBiz;
import com.imooc.bbs.biz.UserBiz;
import com.imooc.bbs.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by Administrator on 2019/12/23.
 */
/*后台控制器*/
@Controller("backController")
@RequestMapping("/back")
public class BackController {
    @Autowired
    UserBiz userBiz;
    @Autowired
    PostBiz postBiz;
    @Autowired
    CommentBiz commentBiz;

    /*用户管理*/
    @RequestMapping("/users")
    public String List(Map<String, Object> map) {
        map.put("users", userBiz.getAll());
        return "users";
    }

    @RequestMapping("/edit")
    public String editUserStatus(@RequestParam Integer id, @RequestParam String userStatus) {
        userBiz.edit(id, Integer.parseInt(userStatus));
        return "redirect:users";
    }

    /*帖子管理*/
    @RequestMapping("/posts")
    public String Posts(Map<String, Object> map) {
        map.put("posts", postBiz.getAll());
        return "posts";
    }

    @RequestMapping("/remove")
    public String remove(@RequestParam Integer pid) {
        /*删帖的时候该贴的回复也需要一并删除*/
        commentBiz.remove(pid);
        postBiz.remove(pid);
        return "redirect:posts";
    }
}
