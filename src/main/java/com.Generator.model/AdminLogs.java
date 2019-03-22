package com.Generator.model;
//author:xuyuanfeng
import  java.util.Date;
public class AdminLogs
{

    private Long adminuserid;
    private Long id;
    private Date createdatetime;
    private String message;

     public Long getAdminuserid()
     {
     return adminuserid; 
     }
     public void setAdminuserid(Long adminuserid)
     {
      this.adminuserid=adminuserid;
      }
     public Long getId()
     {
     return id; 
     }
     public void setId(Long id)
     {
      this.id=id;
      }
     public Date getCreatedatetime()
     {
     return createdatetime; 
     }
     public void setCreatedatetime(Date createdatetime)
     {
      this.createdatetime=createdatetime;
      }
     public String getMessage()
     {
     return message; 
     }
     public void setMessage(String message)
     {
      this.message=message;
      }



}