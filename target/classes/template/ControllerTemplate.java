package ${package};
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")

public class ${className}
{
  
    @RequestMapping()  
    public String helloWolrd()
    {
     return "hello ~ Wolrd ";
     }  


}