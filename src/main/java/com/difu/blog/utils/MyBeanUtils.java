package com.difu.blog.utils;

import org.springframework.beans.BeanWrapperImpl;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.List;

/**
 * @Describe: 获取所有的属性值为空属性名数组
 * @Author: wangdifu
 * @Date: 2022-6-24 , 0024 1:45
 * @Version: 1.0
 */
public class MyBeanUtils {

  public static String[] getNullPropertyName(Object source){
    BeanWrapperImpl beanWrapper = new BeanWrapperImpl(source);
    PropertyDescriptor[] pds = beanWrapper.getPropertyDescriptors();
    List<String> nullPropertiesName = new ArrayList<>();
    for (PropertyDescriptor pd :
            pds) {
      String propertyName = pd.getName();
      if(beanWrapper.getPropertyValue(propertyName)==null){
        nullPropertiesName.add(propertyName);
      }
    }
    return nullPropertiesName.toArray(new String[nullPropertiesName.size()]);
  }

}
