package com.difu.blog.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-15 , 0015 22:35
 * @Version: 1.0
 */

@Entity
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name="t_type")
public class Type {

  @Id
  @GeneratedValue
  private Long id;

  @Override
  public String toString() {
    return "Type{" +
            "id=" + id +
            ", name='" + name + '\'' +
            '}';
  }

  @NotBlank(message = "分类名称不能为空")
  private String name;

  @OneToMany(mappedBy = "type")
  private List<Blog> blogs = new ArrayList<>();
}
