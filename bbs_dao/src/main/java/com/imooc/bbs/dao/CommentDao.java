package com.imooc.bbs.dao;

import com.imooc.bbs.entity.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2019/12/21.
 */
@Repository("commentDao")
public interface CommentDao {
    void insert(Comment comment);

    List<Comment> selectByPostId(Integer postId);

    void delete(Integer postId);
}
