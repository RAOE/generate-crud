package com.serviceImp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.model.News;


import com.service.NewsService;
//author:xuyuanfeng
@Service
public class NewsServiceImp implements NewsService
{
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(News model) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(News model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<News> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
  
	
	
	

}