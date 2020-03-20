package com.imooc.bbs.dao;

import com.imooc.bbs.entity.Post;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2019/12/20.
 */
@Repository("postDao")
public interface PostDao {
    void insert(Post post);

    void delete(Integer id);

    Post select(Integer id);

    List<Post> selectAll();

}
