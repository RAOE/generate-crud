package com.Generator.service;
import java.util.List;
import com.Generator.model.Permissions;

//author:xuyuanfeng
public interface PermissionsService
{
  
   public void addSubmit(Permissions modelName);
   public void update(Permissions modelName);
   public List<Permissions> queryAll();
   public void delete(Permissions id);

}