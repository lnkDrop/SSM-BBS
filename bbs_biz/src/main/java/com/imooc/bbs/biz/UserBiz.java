package com.imooc.bbs.biz;

import com.imooc.bbs.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2019/12/18.
 */
public interface UserBiz {

    void register(User user);

    void edit(Integer id, Integer userStatus);

    User Login(String username, String password);

    List<User> getAll();

}
