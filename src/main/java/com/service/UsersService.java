package com.service;
import java.util.List;
import com.model.Users;

//author:xuyuanfeng
public interface UsersService
{
  
   public void add(Users modelName);
   public void update(Users modelName);
   public List<Users> queryAll();
   public void remove(Long id);

}