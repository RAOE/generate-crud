package com.model;
//author:xuyuanfeng
public class Foods
{

    private String imgpath;
    private String name;
    private String description;
    private String id;
    private String type;
    private String isdeleted;

     public String getImgpath()
     {
     return imgpath; 
     }
     public void setImgpath(String imgpath)
     {
      this.imgpath=imgpath;
      }
     public String getName()
     {
     return name; 
     }
     public void setName(String name)
     {
      this.name=name;
      }
     public String getDescription()
     {
     return description; 
     }
     public void setDescription(String description)
     {
      this.description=description;
      }
     public String getId()
     {
     return id; 
     }
     public void setId(String id)
     {
      this.id=id;
      }
     public String getType()
     {
     return type; 
     }
     public void setType(String type)
     {
      this.type=type;
      }
     public String getIsdeleted()
     {
     return isdeleted; 
     }
     public void setIsdeleted(String isdeleted)
     {
      this.isdeleted=isdeleted;
      }

	public static void main(String[] args) {

		System.out.println("hello world");

	}

}