package com.Generator.service;
import java.util.List;
import com.Generator.model.Houses;

//author:xuyuanfeng
public interface HousesService
{
  
   public void addSubmit(Houses modelName);
   public void update(Houses modelName);
   public List<Houses> queryAll();
   public void delete(Houses id);

}