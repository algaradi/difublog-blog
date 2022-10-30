package com.difu.blog.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-19 , 0019 23:23
 * @Version: 1.0
 */

@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {
  @Override
  public void addInterceptors(InterceptorRegistry registry) {
    registry.addInterceptor(new  LoginInterceptor()).addPathPatterns("/admin/**")
            .excludePathPatterns("/admin").excludePathPatterns("/admin/login");
  }
}
