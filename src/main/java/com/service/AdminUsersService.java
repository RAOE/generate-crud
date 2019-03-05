package com.service;
import java.util.List;
import com.model.AdminUsers;

//author:xuyuanfeng
public interface AdminUsersService
{
  
   public void addSubmit(AdminUsers modelName);
   public void update(AdminUsers modelName);
   public List<AdminUsers> queryAll();
   public void delete(Long id);

}