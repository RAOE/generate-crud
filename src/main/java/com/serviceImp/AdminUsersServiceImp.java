package com.serviceImp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.model.AdminUsers;


import com.service.AdminUsersService;
//author:xuyuanfeng
@Service
public class AdminUsersServiceImp implements AdminUsersService
{
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(AdminUsers model) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(AdminUsers model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<AdminUsers> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
  
	
	
	

}