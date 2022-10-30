package com.difu.blog.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-4-30 , 0030 18:47
 * @Version: 1.0
 */
@ControllerAdvice
public class ControllerException  {

  private final Logger logger  = LoggerFactory.getLogger(ControllerException.class);
  @ExceptionHandler(Exception.class)
  public ModelAndView exceprionHandler(HttpServletRequest request , Exception e) throws Exception {


    logger.error("Request Url {}, Exception {}" , request.getRequestURL() , e);

    if(AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null){
      throw  e;
    }
    ModelAndView mv = new ModelAndView();
    mv.addObject("url",request.getRequestURL());
    mv.addObject("exception",e);
    mv.setViewName("error/error");
    return mv;
  }

}
