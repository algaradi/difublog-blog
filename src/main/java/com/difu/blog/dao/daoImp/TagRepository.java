package com.difu.blog.dao.daoImp;

import com.difu.blog.bean.Tag;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 19:18
 * @Version: 1.0
 */
public interface TagRepository extends JpaRepository<Tag,Long > {

  Tag findByName(String name);

  @Query("select  t from Tag t")
  List<Tag> findTop(Pageable pageable);
}
