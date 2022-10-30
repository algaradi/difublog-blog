package com.difu.blog.controller;

import com.difu.blog.bean.BlogQuery;
import com.difu.blog.bean.Type;
import com.difu.blog.service.BlogService;
import com.difu.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-26 , 0026 22:35
 * @Version: 1.0
 */
@Controller
public class TypeShowController {

  @Autowired
private TypeService typeService;

  @Autowired
  private BlogService blogService;
  @GetMapping("/types/{id}")
  public String types(@PageableDefault(size = 4,sort = {"updateDime"},direction = Sort.Direction.DESC) Pageable pageable,
                      Model model ,@PathVariable Long id ){

  List<Type> typeList = typeService.listTypeTop(10000);
  if(id == -1){
    id = typeList.get(0).getId();
  }

    BlogQuery blogQuery = new BlogQuery();
  blogQuery.setTypeId(id);
  model.addAttribute("types",typeList);
  model.addAttribute("blog",blogService.listBlog(pageable,blogQuery));
  model.addAttribute("activeTypeId",id);

    System.out.println("id " + id);
    System.out.println("types " + typeList);
    System.out.println("activeTypeId " + id);
    System.out.println("activeTypeId " + blogService.listBlog(pageable,blogQuery));
    return "types";
  }


}
