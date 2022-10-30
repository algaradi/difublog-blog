package com.difu.blog.dao.daoImp;

import com.difu.blog.bean.Blog;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 21:12
 * @Version: 1.0
 */
public interface BlogRepository extends JpaRepository<Blog,Long> , JpaSpecificationExecutor<Blog> {


  @Query("select b from Blog b where b.recommend = true ")
List<Blog> findTop(Pageable pageable);


  @Query("select  b from Blog b where b.title like ?1 or  b.content like ?1")
Page<Blog> findByQuery( String query,Pageable pageable);

  @Transactional
  @Modifying
  @Query("update Blog b set b.views = b.views+1 where b.id =?1")
  int updateViews(Long id);

}
