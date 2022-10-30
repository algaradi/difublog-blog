package com.difu.blog.service;

import com.difu.blog.bean.Tag;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 19:22
 * @Version: 1.0
 */
public interface TagService {

  Tag saveTag(Tag tag);
  Tag getTag(Long id);
  Tag getByName(String name);

  List<Tag> listTag(String ids);
  List<Tag> listTag();
  List<Tag> listTopTag(Integer size);
  Page<Tag> listTags(Pageable pageable);
  Tag updateTag(Long id , Tag tag);
  void deleteTag(Long id);
}
