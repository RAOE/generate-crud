package com.Generator.serviceImp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.model.News;
import com.Generator.mapper.NewsMapper;


import com.Generator.service.NewsService;
//author:xuyuanfeng
@Service
public class NewsServiceImp implements NewsService
{
    @Autowired
    private NewsMapper mapper;


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(News model) {
		mapper.insert(model);
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(News model) {
		mapper.updateByPrimaryKeySelective(model);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<News> queryAll() {
		return mapper.selectAll();
		}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(News  model) {
        mapper.delete(model);
	}





}