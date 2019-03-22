package com.Generator.model;
//author:xuyuanfeng
import  java.util.Date;
public class Users
{

    private Date lastloginerrordatetime;
    private boolean loginerrortimes;
    private Long id;
    private String phonenum;
    private String passwordsalt;
    private Date createdatetime;
    private Long cityid;
    private String passwordhash;

     public Date getLastloginerrordatetime()
     {
     return lastloginerrordatetime; 
     }
     public void setLastloginerrordatetime(Date lastloginerrordatetime)
     {
      this.lastloginerrordatetime=lastloginerrordatetime;
      }
     public boolean getLoginerrortimes()
     {
     return loginerrortimes; 
     }
     public void setLoginerrortimes(boolean loginerrortimes)
     {
      this.loginerrortimes=loginerrortimes;
      }
     public Long getId()
     {
     return id; 
     }
     public void setId(Long id)
     {
      this.id=id;
      }
     public String getPhonenum()
     {
     return phonenum; 
     }
     public void setPhonenum(String phonenum)
     {
      this.phonenum=phonenum;
      }
     public String getPasswordsalt()
     {
     return passwordsalt; 
     }
     public void setPasswordsalt(String passwordsalt)
     {
      this.passwordsalt=passwordsalt;
      }
     public Date getCreatedatetime()
     {
     return createdatetime; 
     }
     public void setCreatedatetime(Date createdatetime)
     {
      this.createdatetime=createdatetime;
      }
     public Long getCityid()
     {
     return cityid; 
     }
     public void setCityid(Long cityid)
     {
      this.cityid=cityid;
      }
     public String getPasswordhash()
     {
     return passwordhash; 
     }
     public void setPasswordhash(String passwordhash)
     {
      this.passwordhash=passwordhash;
      }



}