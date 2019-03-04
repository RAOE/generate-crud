package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")

public class NewsController
{
  
    @RequestMapping()  
    public String helloWolrd()
    {
     return "hello ~ Wolrd ";
     }  


}