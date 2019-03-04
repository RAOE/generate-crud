package com.service;
import java.util.List;
import com.model.Foods;

//author:xuyuanfeng
public interface FoodsService
{
  
   public void add(Foods modelName);
   public void update(Foods modelName);
   public List<Foods> queryAll();
   public void remove(Long id);

}