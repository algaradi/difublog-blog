package com.difu.blog.controller.admin;

import com.difu.blog.bean.Tag;
import com.difu.blog.service.TagService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.WebParam;
import javax.validation.Valid;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 19:35
 * @Version: 1.0
 */
@Controller
@RequestMapping("/admin")
public class TagController {

  @Autowired
  private TagService tagService;

  @GetMapping("/tags")
  public String tags(@PageableDefault(size = 4 , sort = {"id"},direction = Sort.Direction.DESC) Pageable pageable , Model model){

    model.addAttribute("page",tagService.listTags(pageable));
    return "admin/tags";
  }


  @GetMapping("/tags/input")
  public String tagInput(Model model){
    model.addAttribute("tag",new Tag());
    return "admin/tag-input";
  }

  @PostMapping("/tags")
  public String post(@Valid  Tag tag, BindingResult bindingResult , RedirectAttributes redirectAttributes){
    Tag t = tagService.getByName(tag.getName());
    if(t != null){
      bindingResult.rejectValue("name","nameError","标签已经存在，不能添加重复标签");
    }
    if(bindingResult.hasErrors()){
      return "admin/tag-input";
    }
    Tag tag1 = tagService.saveTag(tag);
    if(tag1 == null){
      redirectAttributes.addFlashAttribute("msg","添加失败");
    }else{
      redirectAttributes.addFlashAttribute("msg","添加成功");
    }
    return  "redirect:/admin/tags";
  }

  @GetMapping("/tags/{id}/input")
  public String edit(@PathVariable  Long id , Model model){
    model.addAttribute("tag",tagService.getTag(id));
    return "admin/tag-input";
  }

  @PostMapping("/tags/{id}")
  public String editPost(@Valid  Tag tag, BindingResult bindingResult ,@PathVariable Long id ,  RedirectAttributes redirectAttributes){
    Tag t = tagService.getByName(tag.getName());
    if(t != null){
      bindingResult.rejectValue("name","nameError","标签已经存在，不能添加重复标签");
    }
    if(bindingResult.hasErrors()){
      return "admin/tag-input";
    }
    Tag tag1 = tagService.updateTag(id,tag);
    if(tag1 == null){
      redirectAttributes.addFlashAttribute("msg","修改失败！");
    }else{
      redirectAttributes.addFlashAttribute("msg","修改成功！");
    }
    return  "redirect:/admin/tags";
  }


  @GetMapping("/tags/{id}/delete")
  public String delete(@PathVariable Long id , RedirectAttributes redirectAttributes){
    tagService.deleteTag(id);
    redirectAttributes.addFlashAttribute("msg", "删除成功！");
    return  "redirect:/admin/tags";  }
}
