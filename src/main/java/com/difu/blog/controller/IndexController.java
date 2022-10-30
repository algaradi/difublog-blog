package com.difu.blog.controller;

import com.difu.blog.bean.Blog;
import com.difu.blog.bean.BlogQuery;
import com.difu.blog.handler.NotFoundException;
import com.difu.blog.service.BlogService;
import com.difu.blog.service.TagService;
import com.difu.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-4-15 , 0015 15:22
 * @Version: 1.0
 */

@Controller
public class IndexController {

  @Autowired
  private  BlogService blogService;
  @Autowired
  private TypeService typeService;

  @Autowired
  private TagService tagService;



  @GetMapping("/")
  public String toIndex(@PageableDefault(size = 4,sort = {"updateDime"},direction = Sort.Direction.DESC) Pageable pageable,
                        Model model) {

    Page<Blog> blogs = blogService.listBlog(pageable);
    if(blogs!=null){
      model.addAttribute("page",blogs);
    }

      model.addAttribute("types",typeService.listTypeTop(6));
      model.addAttribute("tags",tagService.listTopTag(10));
      model.addAttribute("recommend",blogService.listRecommendBlog(8));


    return "index";
  }


  @PostMapping("/search")
  public String search(@PageableDefault(size = 4,sort = {"updateDime"},direction = Sort.Direction.DESC) Pageable pageable,
                       Model model, @RequestParam String query){

      model.addAttribute("page",blogService.listBlog(pageable,"%"+ query+"%"));
      model.addAttribute("query", query);

    return "search";
  }

  @GetMapping("/blog/{id}")
  public String blog(@PathVariable Long id, Model model){
    model.addAttribute("blog",blogService.getConvertedBlog(id));
//    model.addAttribute("comments",commentService.listCommentByBlogId(id));
    return "blog";
  }

}
