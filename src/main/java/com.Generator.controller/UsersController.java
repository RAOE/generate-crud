package com.Generator.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.Generator.utils.JSONResult;
import com.Generator.model.Users;
import com.Generator.service.UsersService;

@RestController
@RequestMapping("/users")
public class UsersController{

	@Autowired
	private UsersService service;
		
	@RequestMapping("/test")
	public String helloWolrd() {
		return "hello ~ Wolrd ";
	}

	/**
	 * 提交添加请求请求
	 * @return
	 */
	@RequestMapping("/addSubmit.do")
	public JSONResult addSubmit(Users  model)
	{
		service.addSubmit(model);
		return JSONResult.ok("添加成功");
	}

	/**
	 * 提交删除删除请求
	 * @return
	 */
	@RequestMapping("/delete.do")
	public JSONResult delete(Users  model) {
		service.delete(model);
		return JSONResult.ok("删除成功");
	}

	/**
     * 更新成功	
     * @return
     */
	@RequestMapping("/update.do")
	public JSONResult update(Users  model)
	{
		service.update(model);
		return JSONResult.ok("更新成功");
	}

	/**
	 * 查询
	 * @return
	 */
	@RequestMapping("queryAll.do")
	public JSONResult queryAll() {
		return JSONResult.ok(service.queryAll());
	}

}