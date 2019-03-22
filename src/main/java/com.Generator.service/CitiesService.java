package com.Generator.service;
import java.util.List;
import com.Generator.model.Cities;

//author:xuyuanfeng
public interface CitiesService
{
  
   public void addSubmit(Cities modelName);
   public void update(Cities modelName);
   public List<Cities> queryAll();
   public void delete(Cities id);

}