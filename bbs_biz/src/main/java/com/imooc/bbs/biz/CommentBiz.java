package com.imooc.bbs.biz;

import com.imooc.bbs.entity.Comment;

import java.util.List;

/**
 * Created by Administrator on 2019/12/23.
 */
public interface CommentBiz {
    void addComment(Comment comment);

    List<Comment> getByPostId(Integer postId);

    void remove(Integer postId);
}
