package com.Generator.service;
import java.util.List;
import com.Generator.model.Foods;

//author:xuyuanfeng
public interface FoodsService
{
  
   public void addSubmit(Foods modelName);
   public void update(Foods modelName);
   public List<Foods> queryAll();
   public void delete(Foods id);

}