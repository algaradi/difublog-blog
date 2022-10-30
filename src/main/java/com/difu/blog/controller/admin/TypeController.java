package com.difu.blog.controller.admin;

import com.difu.blog.bean.Type;
import com.difu.blog.service.TypeService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
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

import javax.validation.Valid;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-20 , 0020 20:26
 * @Version: 1.0
 */
@Controller
@RequestMapping("/admin")
public class TypeController {

  @Autowired
  private TypeService typeService;

  @GetMapping("/types")
  public String types( @PageableDefault(size=4,sort = {"id"},direction = Sort.Direction.DESC) Pageable pageable ,
                       Model model){

    model.addAttribute("page", typeService.listType(pageable));
    return  "admin/types";
  }




  @PostMapping("/types")
  public String post( @Valid Type type , BindingResult bindingResult, RedirectAttributes redirectAttributes){
   Type t = typeService.getByName(type.getName());
    if(t != null){
      bindingResult.rejectValue("name","nameError","分类已经存在，不能添加重复分类");
    }
    if (bindingResult.hasErrors()) {
      return "admin/type-input";
    }
    Type type1 = typeService.saveType(type);
    if(type1 == null){
      //提示保存失败
      redirectAttributes.addFlashAttribute("msg","添加失败！");
    }else{
      redirectAttributes.addFlashAttribute("msg","添加成功！");
    }
    return "redirect:/admin/types";
  }

  @PostMapping("/types/{id}")
  public String editPost( @Valid Type type , BindingResult bindingResult, @PathVariable  Long id ,RedirectAttributes redirectAttributes){
    Type t = typeService.getByName(type.getName());
    if(t != null){
      bindingResult.rejectValue("name","nameError","分类已经存在，不能添加重复分类");
    }
    if (bindingResult.hasErrors()) {
      return "admin/type-input";
    }
    Type type1 = typeService.updateType(id,type);
    if(type1 == null){
      //提示保存失败
      redirectAttributes.addFlashAttribute("msg","修改失败！");
    }else{
      redirectAttributes.addFlashAttribute("msg","修改成功！");
    }
    return "redirect:/admin/types";
  }



   @GetMapping("/types/input")
  public String addInput(Model model){
    model.addAttribute("type",new Type());
   return  "admin/type-input";
  }

  @GetMapping("/types/{id}/input")
  public String editType(@PathVariable  Long id , Model  model){
    model.addAttribute("type",typeService.getType(id));
    return "admin/type-input";
  }


  @GetMapping("/types/{id}/delete")
  public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes){
    typeService.deleteType(id);
    redirectAttributes.addFlashAttribute("msg","删除成功！");
    return "redirect:/admin/types";
  }


}
