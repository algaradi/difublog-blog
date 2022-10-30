package com.difu.blog.dao.daoImp;

import com.difu.blog.bean.Type;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-20 , 0020 20:06
 * @Version: 1.0
 */
public interface TypeRepository extends JpaRepository<Type,Long> {

        Type findByName(String name);

        @Query("select  t from Type t")
        List<Type> findTop(Pageable pageable);

}
