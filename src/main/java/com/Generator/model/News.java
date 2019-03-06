package com.Generator.model;
//author:xuyuanfeng
public class News
{

    private String description;
    private String createtime;
    private String id;
    private String title;

     public String getDescription()
     {
     return description; 
     }
     public void setDescription(String description)
     {
      this.description=description;
      }
     public String getCreatetime()
     {
     return createtime; 
     }
     public void setCreatetime(String createtime)
     {
      this.createtime=createtime;
      }
     public String getId()
     {
     return id; 
     }
     public void setId(String id)
     {
      this.id=id;
      }
     public String getTitle()
     {
     return title; 
     }
     public void setTitle(String title)
     {
      this.title=title;
      }

	public static void main(String[] args) {

		System.out.println("hello world");

	}

}