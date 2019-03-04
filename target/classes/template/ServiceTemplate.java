package ${package};
import java.util.List;
import ${modelPath}.${modelName};

//author:xuyuanfeng
public interface ${className}
{
  
   public void add(${modelName} modelName);
   public void update(${modelName} modelName);
   public List<${modelName}> queryAll();
   public void remove(Long id);

}