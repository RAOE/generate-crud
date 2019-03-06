package com.Generator.serviceImp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.model.Foods;
import com.Generator.mapper.FoodsMapper;


import com.Generator.service.FoodsService;
//author:xuyuanfeng
@Service
public class FoodsServiceImp implements FoodsService
{
    @Autowired
    private FoodsMapper mapper;


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(Foods model) {
		mapper.insert(model);
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Foods model) {
		mapper.updateByPrimaryKeySelective(model);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Foods> queryAll() {
		return mapper.selectAll();
		}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Foods  model) {
        mapper.delete(model);
	}





}