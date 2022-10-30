package com.difu.blog.utils;

import org.commonmark.Extension;
import org.commonmark.ext.gfm.tables.TableBlock;
import org.commonmark.ext.gfm.tables.TablesExtension;
import org.commonmark.ext.heading.anchor.HeadingAnchorExtension;
import org.commonmark.node.Link;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.AttributeProvider;
import org.commonmark.renderer.html.AttributeProviderContext;
import org.commonmark.renderer.html.AttributeProviderFactory;
import org.commonmark.renderer.html.HtmlRenderer;

import java.util.*;

/**
 * @Describe:
 * @Author: wangdifu
 * @Date: 2022-6-24 , 0024 22:40
 * @Version: 1.0
 */
public class MarkdownSemanticUtils {


  /**
   * markdown转换为HTML格式 基础方法
   * @param markdown
   * @return
   */
  public static String markdownToHtml(String markdown){
    Parser parser = Parser.builder().build();
    Node docment = parser.parse(markdown);
    HtmlRenderer renderer = HtmlRenderer.builder().build();
    return renderer.render(docment);
  }

  /**
   * markdown转换为HTML 扩展功能
   * 处理：表格以及h标签格式
   * @param markdown
   * @return
   */
  public static String markdownToHtmlExtensions(String markdown){

    //h标签 生产id
    Set<Extension> headingAnchorExtension = Collections.singleton(HeadingAnchorExtension.create());
    //table处理  转换为HTML
    List<Extension> tableExtension = Arrays.asList(TablesExtension.create());
    Parser parser = Parser.builder().extensions(tableExtension).build();

    Node document = parser.parse(markdown);
    HtmlRenderer renderer = HtmlRenderer.builder().extensions(headingAnchorExtension).extensions(tableExtension)
            .attributeProviderFactory(new AttributeProviderFactory() {
              @Override
              public AttributeProvider create(AttributeProviderContext attributeProviderContext) {

                return new CustomAttributeProvider();
              }
            }).build();
    return renderer.render(document);
  }

  static class CustomAttributeProvider implements AttributeProvider{

    @Override
    public void setAttributes(Node node, String s, Map<String, String> map) {
         if(node instanceof Link){
           map.put("target","_blank");
         }
         if(node instanceof TableBlock){
           map.put("class","ui celled table");
         }
    }
  }


  public static void main(String[] args) {
    String table ="| hello | hi | 哈哈| \n" +
            "|----|----|---|";
    String a = "### ahmed";
    System.out.println(markdownToHtmlExtensions(a));
  }


}
