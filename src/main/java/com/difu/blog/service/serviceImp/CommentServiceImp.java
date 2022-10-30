package com.difu.blog.service.serviceImp;

import com.difu.blog.bean.Comment;
import com.difu.blog.dao.daoImp.CommentRepositoy;
import com.difu.blog.handler.NotFoundException;
import com.difu.blog.service.CommentService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-25 , 0025 3:46
 * @Version: 1.0
 */
@Service
public class CommentServiceImp  implements CommentService {


  @Autowired
  private CommentRepositoy commentRepositoy;

  @Override
  public List<Comment> listCommentByBlogId(Long blogId) {
    Sort sort = Sort.by(Sort.Direction.ASC , "createTime");
    List<Comment> comments = commentRepositoy.findByBlogIdAndParentCommentNull(blogId, sort);
    return eachComment(comments);
  }



  @Transactional
  @Override
  public Comment saveComment(Comment comment) {
    Long parentCommentId = comment.getParentComment().getId();
    if(parentCommentId != -1){
      Comment c = commentRepositoy.getById(parentCommentId);
      if(c == null){
        throw new NotFoundException("没有该评论");
      }
      comment.setParentComment(c);
    }else{
      comment.setParentComment(null);
    }
    comment.setCreateTime(new Date());
    return commentRepositoy.save(comment);
  }


  /**
   * 循环每个顶级的评论节点
   * @param comments
   * @return
   */
  private  List<Comment> eachComment(List<Comment> comments){
    List<Comment> commentsView = new ArrayList<>();
  for (Comment comment :
          comments) {
    Comment c = new Comment();
    BeanUtils.copyProperties(comment,c);
    commentsView.add(c);
  }

  //合并评论的各层子代到第一集子代集合
    combineChildren(commentsView);
  return commentsView;
}

private void combineChildren(List<Comment> comments){
  for (Comment comment : comments) {
    List<Comment> replays1 = comment.getComments();
    for (Comment replay1: replays1) {
      // 循环迭代。找出子代，存放在tempReplys中
      recursively(replay1);
    }
    //修改顶级节点的replay集合为迭代处理后的集合
    comment.setComments(tempReplys);
    //清楚临时存放区
   tempReplys = new ArrayList<>();
  }
}

// 存放迭代找出的所有子代集合
private List<Comment> tempReplys = new ArrayList<>();

  /**
   * 递归迭代，剥洋葱
   * @param comment 被迭代的对象
   */
  private void recursively(Comment comment){
    // 顶节点添加到临时存放集合
    tempReplys.add(comment);
    if(comment.getComments().size()>0){
      List<Comment> replys = comment.getComments();
      for (Comment reply :
              replys) {
        tempReplys.add(reply);
        if(reply.getComments().size()>0){
          recursively(reply);
        }
      }
    }

  }

}
