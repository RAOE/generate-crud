package com.Generator.serviceImp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.model.Users;
import com.Generator.mapper.UsersMapper;


import com.Generator.service.UsersService;
//author:xuyuanfeng
@Service
public class UsersServiceImp implements UsersService
{
    @Autowired
    private UsersMapper mapper;


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(Users model) {
		mapper.insert(model);
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Users model) {
		mapper.updateByPrimaryKeySelective(model);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Users> queryAll() {
		return mapper.selectAll();
		}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Users  model) {
        mapper.delete(model);
	}





}