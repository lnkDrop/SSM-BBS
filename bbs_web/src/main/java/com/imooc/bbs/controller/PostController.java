package com.imooc.bbs.controller;

import com.imooc.bbs.biz.CommentBiz;
import com.imooc.bbs.biz.PostBiz;
import com.imooc.bbs.entity.Comment;
import com.imooc.bbs.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by Administrator on 2019/12/20.
 */
@Controller("postController")
@RequestMapping("/post")
public class PostController {
    @Autowired
    PostBiz postBiz;
    @Autowired
    CommentBiz commentBiz;

    @RequestMapping("/to_post")
    public String toPost() {
        return "newpost";
    }

    /*发帖*/
    @RequestMapping("/pre_post")
    public String prePost(Post post) {
        postBiz.addPost(post);
        return "redirect:../bbs/list";
    }

    /*回帖*/
    @RequestMapping("/addComment")
    public String addComment(Comment comment) {
        commentBiz.addComment(comment);
        return "redirect:../bbs/to_post?pid=" + comment.getPostId(); //回复完成留在当前帖子里
    }

}
