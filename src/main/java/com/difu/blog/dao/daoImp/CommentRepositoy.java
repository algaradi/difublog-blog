package com.difu.blog.dao.daoImp;

import com.difu.blog.bean.Comment;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-25 , 0025 3:46
 * @Version: 1.0
 */
public interface CommentRepositoy extends JpaRepository<Comment,Long> {


  List<Comment>  findByBlogIdAndParentCommentNull(Long blogId, Sort sort);

}
