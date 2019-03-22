package com.Generator.service;
import java.util.List;
import com.Generator.model.Roles;

//author:xuyuanfeng
public interface RolesService
{
  
   public void addSubmit(Roles modelName);
   public void update(Roles modelName);
   public List<Roles> queryAll();
   public void delete(Roles id);

}