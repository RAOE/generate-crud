package com.Generator.service;
import java.util.List;
import com.Generator.model.News;

//author:xuyuanfeng
public interface NewsService
{
  
   public void addSubmit(News modelName);
   public void update(News modelName);
   public List<News> queryAll();
   public void delete(News id);

}