package com.imooc.bbs.dao;

import com.imooc.bbs.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2019/12/18.
 */
@Repository("userDao")
public interface UserDao {
    void insert(User user);

    void update(User user);

    User select(String username);

    List<User> selectAll();
}
