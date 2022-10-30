package com.difu.blog.service.serviceImp;

import com.difu.blog.bean.Blog;
import com.difu.blog.bean.BlogQuery;
import com.difu.blog.dao.daoImp.BlogRepository;
import com.difu.blog.handler.NotFoundException;
import com.difu.blog.service.BlogService;
import com.difu.blog.utils.MarkdownSemanticUtils;
import com.difu.blog.utils.MyBeanUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-22 , 0022 21:12
 * @Version: 1.0
 */
@Service
public class BlogServiceImp implements BlogService {

  @Autowired
  private BlogRepository blogRepository;
  @Override
  public Blog getBlog(Long id) {
    return blogRepository.findById(id).get();
  }

  @Transactional
  @Override
  public Blog getConvertedBlog(Long id) {
    Blog blog = blogRepository.getById(id);
    if(blog == null){
      throw  new NotFoundException("该博客不存在");
    }
     Blog b = new Blog();
    BeanUtils.copyProperties(blog,b);
    b.setContent(MarkdownSemanticUtils.markdownToHtmlExtensions(b.getContent()));
    blogRepository.updateViews(id);
    return b;
  }

  @Override
  public Page<Blog> listBlog(Pageable pageable, BlogQuery blog) {
    return blogRepository.findAll(new Specification<Blog>() {
      @Override
      public Predicate toPredicate(Root<Blog> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        List<Predicate>  predicates = new ArrayList<>();
        if(!"".equals(blog.getTitle()) && blog.getTitle() != null){
          predicates.add(cb.like(root.<String>get("title"),"%"+blog.getTitle()+"%"));
        }
        if(blog.getTypeId()!=null){
          predicates.add(cb.equal(root.get("type").get("id"),blog.getTypeId()));
        }
        if(blog.isRecommend()){
          predicates.add(cb.equal(root.<Boolean>get("recommend"),blog.isRecommend()));
        }
        query.where(predicates.toArray(new Predicate[predicates.size()]));
        return null;
      }
    }, pageable);
  }

  @Override
  public Page<Blog> listBlog(Pageable pageable) {
    return blogRepository.findAll(pageable);
  }

  @Override
  public Page<Blog> listBlog(Pageable pageable, String query) {

    return blogRepository.findByQuery(query,pageable);
  }


  @Transactional
  @Override
  public Blog saveBlog(Blog blog) {
   if(blog.getId()==null){
     blog.setCreateTime(new Date());
     blog.setUpdateDime(new Date());
     blog.setViews(0);
   }else{
     blog.setUpdateDime(new Date());
   }


    return blogRepository.save(blog);
  }


  @Transactional
  @Override
  public Blog updateBlog(Long id, Blog blog) {
    Blog blog1 = blogRepository.findById(id).get();
    if(blog1 == null){
      throw new NotFoundException("该博客不存在");
    }
    BeanUtils.copyProperties(blog,blog1, MyBeanUtils.getNullPropertyName(blog));
    blog.setUpdateDime(new Date());
    return blogRepository.save(blog1);
  }

  @Transactional
  @Override
  public void deleteBlog(Long id) {
  blogRepository.deleteById(id);
  }

  @Override
  public List<Blog> listRecommendBlog(Integer size) {
    Sort sort = Sort.by(Sort.Direction.DESC,"updateDime");
    Pageable pageable= PageRequest.of(0,size,sort);
    return blogRepository.findTop(pageable);
  }
}
