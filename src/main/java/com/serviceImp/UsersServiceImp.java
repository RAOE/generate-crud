package com.serviceImp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.model.Users;


import com.service.UsersService;
//author:xuyuanfeng
@Service
public class UsersServiceImp implements UsersService
{
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(Users model) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Users model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Users> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
  
	
	
	

}