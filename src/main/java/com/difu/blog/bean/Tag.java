package com.difu.blog.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-15 , 0015 22:36
 * @Version: 1.0
 */
@Entity
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="t_tag")
public class Tag {

  @Id
  @GeneratedValue
  private Long id;

  @NotBlank(message = "标签名称不能为空")
  private String name;

  @ManyToMany(mappedBy = "tags")
  private List<Blog>  blogs = new ArrayList<>();

  @Override
  public String toString() {
    return "Tag{" +
            "id=" + id +
            ", name='" + name + '\'' +
            '}';
  }
}
