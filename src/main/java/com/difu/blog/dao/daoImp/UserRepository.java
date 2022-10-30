package com.difu.blog.dao.daoImp;

import com.difu.blog.bean.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-18 , 0018 16:49
 * @Version: 1.0
 */
public interface UserRepository extends JpaRepository<User,Long> {

  User findByUsernameAndPassword(String username,String password);
}
