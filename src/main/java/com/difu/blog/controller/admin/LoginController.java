package com.difu.blog.controller.admin;

import com.difu.blog.bean.User;
import com.difu.blog.service.UserService;
import com.difu.blog.service.serviceImp.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-18 , 0018 16:57
 * @Version: 1.0
 */

@Controller
@RequestMapping("/admin")
public class LoginController {

  @Autowired
  private UserService userService;
  @GetMapping
  public String loginPage(){
    return "/admin/login";
  }

  @PostMapping("/login")
  public String login(@RequestParam("username") String username, @RequestParam("password") String passsword , HttpSession session , RedirectAttributes redirectAttributes){
    User user = userService.checkUserNameAndPassword(username,passsword);
    System.out.println("UserName"+username+"Pass"+passsword);
    if(user != null){
      user.setPassword(null);
      session.setAttribute("user",user);
      return "/admin/index";
    }else{
      redirectAttributes.addAttribute("msg","用户名或密码有错误");
      return "redirect:/admin";
    }
  }
  @GetMapping("/logout")
  public String logout(HttpSession session){
    session.removeAttribute("user");
    return "redirect:/admin";
  }

}
