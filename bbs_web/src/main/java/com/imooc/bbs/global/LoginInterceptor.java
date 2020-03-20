package com.imooc.bbs.global;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2019/12/20.
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String url = httpServletRequest.getRequestURI();
        /*登录注册及未登录浏览时放过*/
        if (url.toLowerCase().indexOf("bbs") >= 0) {
            return true;
        }

        /*已登录的情况下放过*/
        HttpSession session = httpServletRequest.getSession();
        if (session.getAttribute("user") != null) {
            return true;
        }

        /*其他情况下拦截，跳转到登录界面*/
        httpServletResponse.sendRedirect("/bbs/to_login");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
