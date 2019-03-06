package com.serviceImp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.model.Foods;


import com.service.FoodsService;
//author:xuyuanfeng
@Service
public class FoodsServiceImp implements FoodsService
{
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(Foods model) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Foods model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Foods> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
  
	
	
	

}