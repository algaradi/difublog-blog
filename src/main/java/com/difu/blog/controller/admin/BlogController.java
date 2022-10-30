package com.difu.blog.controller.admin;

import com.difu.blog.bean.Blog;
import com.difu.blog.bean.BlogQuery;
import com.difu.blog.bean.User;
import com.difu.blog.service.BlogService;
import com.difu.blog.service.TagService;
import com.difu.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-19 , 0019 23:13
 * @Version: 1.0
 */

@Controller
@RequestMapping("/admin")
public class BlogController {

  private  static String INPUT ="admin/blogs-inpu";
  private  static String LIST ="admin/blogs";
  private  static String REDIRECTLIST ="redirect:/admin/blogs";

  @Autowired
private BlogService blogService;
  @Autowired
  private TypeService typeService;

  @Autowired
  private TagService tagService;


  @GetMapping("/blogs")
  public String BlogPage(@PageableDefault(size = 2,sort = {"updateDime"},direction = Sort.Direction.DESC) Pageable pageable,
                         BlogQuery blog , Model model){
    model.addAttribute("page",blogService.listBlog(pageable,blog));
    model.addAttribute("types",typeService.listType());
    return LIST;
  }


  @PostMapping("/blogs/search")
  public String search(@PageableDefault(size = 2,sort = {"updateDime"},direction = Sort.Direction.DESC) Pageable pageable,
                       BlogQuery blog , Model model){
    model.addAttribute("page",blogService.listBlog(pageable,blog));

    return "admin/blogs :: blogList";
  }


  @GetMapping("/blogs/input")
  public String input(Model model){
    model.addAttribute("types",typeService.listType());
    model.addAttribute("tags",tagService.listTag());
    model.addAttribute("blog", new Blog());
    return INPUT;
  }

  @GetMapping("/blogs/{id}/input")
  public String editInput(@PathVariable Long id , Model model){
    model.addAttribute("types",typeService.listType());
    model.addAttribute("tags",tagService.listTag());
    Blog  blog = blogService.getBlog(id);
    blog.init();
    model.addAttribute("blog", blog);

    return INPUT;
  }

  @PostMapping("/blogs")
    public String post(Blog blog , HttpSession session , RedirectAttributes redirectAttributes){
    blog.setUser((User) session.getAttribute("user"));
    blog.setType(typeService.getType(blog.getType().getId()));
    blog.setTags(tagService.listTag(blog.getTagIds()));

    Blog blog1 ;
     if(blog.getId()==null){
       blog1 = blogService.saveBlog(blog);
     }else{
       blog1 = blogService.updateBlog(blog.getId(),blog);
     }

    if(blog1 != null){
      redirectAttributes.addFlashAttribute("msg","操作成功！");
    }else{
      redirectAttributes.addFlashAttribute("msg","操作失败！");

    }
    return REDIRECTLIST;
    }

    @GetMapping("/blogs/{id}/delete")
    public String delete(@PathVariable Long id ,RedirectAttributes redirectAttributes){
        blogService.deleteBlog(id);
        redirectAttributes.addFlashAttribute("msg","删除成功！");
        return REDIRECTLIST;
    }
}
