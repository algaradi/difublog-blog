package com.difu.blog.service;

import com.difu.blog.bean.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-20 , 0020 20:01
 * @Version: 1.0
 */
public interface TypeService {

  Type saveType(Type type);
  Type getType(Long id);
  Type getByName(String name);
  Page<Type>  listType(Pageable pageable);
  List<Type> listType();
  List<Type> listTypeTop(Integer size);

  Type updateType(Long id , Type type);
  void deleteType(Long id);


}
