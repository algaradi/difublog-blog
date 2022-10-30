package com.difu.blog.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.handler.WebRequestHandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-19 , 0019 23:20
 * @Version: 1.0
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {


  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

    if(request.getSession().getAttribute("user") == null){
      response.sendRedirect("/admin");
      return false;
    }
    return true;
  }
}
