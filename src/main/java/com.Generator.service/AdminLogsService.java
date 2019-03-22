package com.Generator.service;
import java.util.List;
import com.Generator.model.AdminLogs;

//author:xuyuanfeng
public interface AdminLogsService
{
  
   public void addSubmit(AdminLogs modelName);
   public void update(AdminLogs modelName);
   public List<AdminLogs> queryAll();
   public void delete(AdminLogs id);

}