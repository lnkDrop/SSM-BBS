package com.imooc.bbs.biz.impl;

import com.imooc.bbs.biz.PostBiz;
import com.imooc.bbs.dao.PostDao;
import com.imooc.bbs.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2019/12/20.
 */
@Service("postBiz")
public class PostBizImpl implements PostBiz {
    @Autowired
    PostDao postDao;

    public void addPost(Post post) {
        post.setCreateTime(new Date());
        postDao.insert(post);
    }

    public void remove(Integer id) {
        postDao.delete(id);
    }

    public Post get(Integer id) {
        Post post = postDao.select(id);
        return post;
    }

    public List<Post> getAll() {
        List<Post> posts = postDao.selectAll();
        return posts;
    }
}
