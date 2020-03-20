package com.imooc.bbs.biz;

import com.imooc.bbs.entity.Post;

import java.util.List;

/**
 * Created by Administrator on 2019/12/20.
 */
public interface PostBiz {
    void addPost(Post post);

    void remove(Integer id);

    Post get(Integer id);

    List<Post> getAll();
}
