package com.difu.blog.service.serviceImp;

import com.difu.blog.bean.Type;
import com.difu.blog.dao.daoImp.TypeRepository;
import com.difu.blog.handler.NotFoundException;
import com.difu.blog.service.TypeService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-20 , 0020 20:05
 * @Version: 1.0
 */
@Service
public class TypeServiceImp implements TypeService {

  @Autowired
  private TypeRepository typeRepository;


  @Override
  public Type saveType(Type type) {
    return typeRepository.save(type);
  }


  @Override
  public Type getType(Long id) {
    return typeRepository.findById(id).get();
  }

  @Override
  public Type getByName(String name) {
    return typeRepository.findByName(name);
  }


  @Override
  public Page<Type> listType(Pageable pageable) {
    return typeRepository.findAll(pageable);
  }

  @Override
  public List<Type> listType() {
    return typeRepository.findAll();
  }

  @Override
  public List<Type> listTypeTop(Integer size) {

    Sort sort = Sort.by(Sort.Direction.DESC,"blogs.size");
    Pageable pageable =  PageRequest.of(0,size,sort);
        return typeRepository.findTop(pageable);
  }


  @Override
  public Type updateType(Long id, Type type) {
   Type type1 = typeRepository.findById(id).get();
      if(type1 == null){
        throw  new NotFoundException("不存在该类型");
      }
    BeanUtils.copyProperties(type,type1);
    return typeRepository.save(type1);
  }


  @Override
  public void deleteType(Long id) {
typeRepository.deleteById(id);
  }
}
