package com.imooc.bbs.biz.impl;

import com.imooc.bbs.biz.UserBiz;
import com.imooc.bbs.dao.UserDao;
import com.imooc.bbs.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/12/18.
 */
@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Autowired
    private UserDao userDao;

    public void register(User user) {
        /*设置注册时的用户状态默认正常*/
        user.setUserStatus(0);
        userDao.insert(user);
    }

    public void edit(Integer id, Integer userStatus) {
        User user = new User();
        user.setId(id);
        user.setUserStatus(userStatus);
        userDao.update(user);
    }


    public User Login(String username, String password) {
        User user = userDao.select(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public List<User> getAll() {
        List<User> users = userDao.selectAll();
        return users;
    }
}
