package com.difu.blog.service;

import com.difu.blog.bean.User;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-18 , 0018 16:46
 * @Version: 1.0
 */
public interface UserService {

   User checkUserNameAndPassword(String username , String password);
}
