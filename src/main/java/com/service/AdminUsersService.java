package com.service;
import java.util.List;
import com.model.AdminUsers;

//author:xuyuanfeng
public interface AdminUsersService
{
  
   public void add(AdminUsers modelName);
   public void update(AdminUsers modelName);
   public List<AdminUsers> queryAll();
   public void remove(Long id);

}