package com.difu.blog.service.serviceImp;

import com.difu.blog.bean.User;
import com.difu.blog.dao.daoImp.UserRepository;
import com.difu.blog.service.UserService;
import com.difu.blog.utils.Md5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-18 , 0018 16:48
 * @Version: 1.0
 */
@Service
public class UserServiceImp implements UserService {

  @Autowired
  private UserRepository  userRepository;
  @Override
  public User checkUserNameAndPassword(String username, String password) {
    return userRepository.findByUsernameAndPassword(username,Md5.code(password));
  }
}
