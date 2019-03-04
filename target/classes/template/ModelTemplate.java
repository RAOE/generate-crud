package ${package};
//author:xuyuanfeng
public class ${className}
{

   <#list columnMap?keys as key>
    private String ${key};
   </#list>

  <#list columnMap?keys as key>
     public String get${key?cap_first}()
     {
     return ${key}; 
     }
     public void set${key?cap_first}(String ${key})
     {
      this.${key}=${key};
      }
  </#list>

	public static void main(String[] args) {

		System.out.println("hello world");

	}

}