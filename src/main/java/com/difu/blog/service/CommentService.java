package com.difu.blog.service;

import com.difu.blog.bean.Comment;

import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-25 , 0025 3:44
 * @Version: 1.0
 */
public interface CommentService {

  List<Comment> listCommentByBlogId(Long blogId);

  Comment saveComment(Comment comment);

}
