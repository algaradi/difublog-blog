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
 * @Date: 2022-6-15 , 0015 22:24
 * @Version: 1.0
 */
@Entity
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="t_blog")
public class Blog {


  @Id
  @GeneratedValue
  private Long id;
  private String title;


  @Basic(fetch = FetchType.LAZY)
  @Lob
  private String content;
  private String firstPicturel;
  private String flag;
  private Integer views = 0;
  private boolean appreciation;
  private boolean shareStatement;
  private boolean commentabled;
  private boolean published;
  private boolean recommend;

  private String discription;

  @Transient
  private String tagIds;

  @Temporal(TemporalType.TIMESTAMP)
  private Date createTime;
  @Temporal(TemporalType.TIMESTAMP)
  private Date updateDime;
  @ManyToOne
  private Type type;

  @ManyToMany(cascade = {CascadeType.PERSIST})
  private List<Tag> tags = new ArrayList<>();

  @ManyToOne
  private User user;

  @OneToMany(mappedBy = "blog")
  private List<Comment> comments = new ArrayList<>();


  public void init(){
    this.tagIds = tagsToIds(this.getTags());
  }

  // 1,2,3,...
  private String tagsToIds(List<Tag> tags){
    if(!tags.isEmpty()){
      StringBuffer ids = new StringBuffer();
      boolean flag = false;
      for (Tag tag:tags
           ) {
        if(flag){
          ids.append(",");
        }else{
          flag = true;
        }
        ids.append(tag.getId());
      }
     return ids.toString();
    }else {
      return tagIds;
    }
  }

  @Override
  public String toString() {
    return "Blog{" +
            "id=" + id +
            ", title='" + title + '\'' +
            ", content='" + content + '\'' +
            ", firstPicturel='" + firstPicturel + '\'' +
            ", flag='" + flag + '\'' +
            ", views=" + views +
            ", appreciation=" + appreciation +
            ", shareStatement=" + shareStatement +
            ", commentabled=" + commentabled +
            ", published=" + published +
            ", recommend=" + recommend +
            ", discription='" + discription + '\'' +
            ", tagIds='" + tagIds + '\'' +
            ", createTime=" + createTime +
            ", updateDime=" + updateDime +
            ", type=" + type +
            ", user=" + user +
            '}';
  }
}
