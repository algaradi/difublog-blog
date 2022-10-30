package com.difu.blog.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-15 , 0015 22:40
 * @Version: 1.0
 */
@Entity
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="t_user")
public class User {
  @Id
  @GeneratedValue
   private Long id;
   private String nickname;
   private String username;
   private String password;
   private String email;
   private String avatar;
   private Integer type;
   @Temporal(TemporalType.TIMESTAMP)
   private Date creatTime;
   private String updateTime;

   @OneToMany(mappedBy = "user")
   private List<Blog> blogs = new ArrayList<>();

 @Override
 public String toString() {
  return "User{" +
          "id=" + id +
          ", nickname='" + nickname + '\'' +
          ", username='" + username + '\'' +
          ", password='" + password + '\'' +
          ", email='" + email + '\'' +
          ", avatar='" + avatar + '\'' +
          ", type=" + type +
          ", creatTime=" + creatTime +
          ", updateTime='" + updateTime + '\'' +
          '}';
 }
}
