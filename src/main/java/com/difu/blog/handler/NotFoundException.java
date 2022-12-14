package com.difu.blog.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-4-30 , 0030 18:58
 * @Version: 1.0
 */
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundException  extends  RuntimeException{
  public NotFoundException() {
  }

  public NotFoundException(String message) {
    super(message);
  }

  public NotFoundException(String message, Throwable cause) {
    super(message, cause);
  }
}
