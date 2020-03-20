package com.imooc.bbs.biz.impl;

import com.imooc.bbs.biz.CommentBiz;
import com.imooc.bbs.dao.CommentDao;
import com.imooc.bbs.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2019/12/23.
 */
@Service("commentBiz")
public class CommentBizImpl implements CommentBiz {
    @Autowired
    CommentDao commentDao;

    public void addComment(Comment comment) {
        comment.setCreateTime(new Date());
        commentDao.insert(comment);
    }

    public List<Comment> getByPostId(Integer postId) {
        List<Comment> comments = commentDao.selectByPostId(postId);
        return comments;
    }

    public void remove(Integer postId) {
        commentDao.delete(postId);
    }
}
