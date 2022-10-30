package com.difu.blog.service.serviceImp;

import com.difu.blog.bean.Tag;
import com.difu.blog.dao.daoImp.TagRepository;
import com.difu.blog.handler.NotFoundException;
import com.difu.blog.service.TagService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 19:20
 * @Version: 1.0
 */
@Service
public class TagServiceImp implements TagService {

  @Autowired
  private TagRepository repository;

  @Override
  public Tag saveTag(Tag tag) {
    return repository.save(tag);
  }

  @Override
  public Tag getTag(Long id) {
    return repository.findById(id).get();
  }

  @Override
  public Tag getByName(String name) {
    return repository.findByName(name);
  }


  private List<Long> convertToList(String ids){
    List<Long>  list = new ArrayList<>();
    if(!"".equals(ids) && ids != null){
      String[] idarrays = ids.split(",");
      for (int i = 0; i < idarrays.length; i++) {
        list.add(new Long(idarrays[i]));
      }
    }
     return list;
  }


  @Override
  public List<Tag> listTag(String ids) {
    return repository.findAllById(convertToList(ids));
  }


  @Override
  public List<Tag> listTag() {
    return repository.findAll();
  }

  @Override
  public List<Tag> listTopTag(Integer size) {
    Sort sort = Sort.by(Sort.Direction.DESC,"blogs.size");
    Pageable pageable = PageRequest.of(0,size,sort);
    return repository.findTop(pageable);
  }

  @Override
  public Page<Tag> listTags(Pageable pageable) {
    return repository.findAll(pageable);
  }

  @Override
  public Tag updateTag(Long id, Tag tag) {
    Tag tag1 = repository.findById(id).get();
    if(tag1 == null){
      throw  new NotFoundException("该标签不存在");
    }
    BeanUtils.copyProperties(tag,tag1);
    return repository.save(tag1);
  }

  @Override
  public void deleteTag(Long id) {
    repository.deleteById(id);
  }
}
