package com.difu.blog.bean;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 23:40
 * @Version: 1.0
 */
public class BlogQuery {

  private String title;
  private Long typeId;
  private boolean recommend;

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public Long getTypeId() {
    return typeId;
  }

  public void setTypeId(Long typeId) {
    this.typeId = typeId;
  }

  public boolean isRecommend() {
    return recommend;
  }

  public void setRecommend(boolean recommend) {
    this.recommend = recommend;
  }

  public BlogQuery() {
  }
}
