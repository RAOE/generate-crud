package com.service;
import java.util.List;
import com.model.Users;

//author:xuyuanfeng
public interface UsersService
{
  
   public void addSubmit(Users modelName);
   public void update(Users modelName);
   public List<Users> queryAll();
   public void delete(Long id);

}