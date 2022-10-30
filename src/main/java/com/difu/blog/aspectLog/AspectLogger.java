package com.difu.blog.aspectLog;

import com.difu.blog.handler.ControllerException;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Arrays;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-5-10 , 0010 3:12
 * @Version: 1.0
 */

@Aspect
@Component
public class AspectLogger {

 private Logger logger = LoggerFactory.getLogger(AspectLogger.class);

  @Pointcut("execution(* com.difu.blog.controller.*.*(..))")
  public void log(){
  }

  @Before(value =  "log()")
  public void beforLog(){

    logger.info("=========Before==============");
  }

  @After(value = "log()")
  public void afterLog(){
    logger.info("=============After===============");
  }

  @AfterReturning(returning = "result",pointcut = "log()")
  public void returnLog(Object result){
    logger.info("Return :{}",result);
  }

  class RequestLog{
    private String url;
    private String ip;
    private String classMethode;
    private Object[] args;

    public RequestLog(String url, String ip, String classMethode, Object[] args) {
      this.url = url;
      this.ip = ip;
      this.classMethode = classMethode;
      this.args = args;
    }

    @Override
    public String toString() {
      return "{" +
              "url='" + url + '\'' +
              "\n ip='" + ip + '\'' +
              "\n classMethode='" + classMethode + '\'' +
              "\n args=" + Arrays.toString(args) +
              '}';
    }
  }
}
