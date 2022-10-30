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
 * @Date: 2022-6-15 , 0015 22:37
 * @Version: 1.0
 */

@Entity
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="t_comment")
public class Comment {

  @Id

  @GeneratedValue
  private Long id;
  private String nickName;
  private String email;
  private String content;
  private String avatar;
  @Temporal(TemporalType.TIMESTAMP)
  private Date createTime;

  @ManyToOne
  private Blog blog;

private boolean adminComment;
  // replayComments
  @OneToMany(mappedBy = "parentComment")
  private List<Comment>  comments = new ArrayList<>();

  @ManyToOne
  private  Comment parentComment;


}
