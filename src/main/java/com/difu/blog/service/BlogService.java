package com.difu.blog.service;

import com.difu.blog.bean.Blog;
import com.difu.blog.bean.BlogQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 21:09
 * @Version: 1.0
 */
public interface BlogService {

  Blog getBlog(Long  id);
  Blog getConvertedBlog(Long  id);
  Page<Blog> listBlog(Pageable pageable, BlogQuery blog);
  Page<Blog> listBlog(Pageable pageable);
  Page<Blog> listBlog(Pageable pageable,String query);
  Blog saveBlog(Blog blog);
  Blog updateBlog(Long id , Blog blog);
  void deleteBlog(Long id);


  List<Blog> listRecommendBlog(Integer size);
}
