package com.service;
import java.util.List;
import com.model.News;

//author:xuyuanfeng
public interface NewsService
{
  
   public void addSubmit(News modelName);
   public void update(News modelName);
   public List<News> queryAll();
   public void delete(Long id);

}