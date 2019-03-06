package com.Generator.serviceImp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.model.AdminUsers;
import com.Generator.mapper.AdminUsersMapper;


import com.Generator.service.AdminUsersService;
//author:xuyuanfeng
@Service
public class AdminUsersServiceImp implements AdminUsersService
{
    @Autowired
    private AdminUsersMapper mapper;


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(AdminUsers model) {
		mapper.insert(model);
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(AdminUsers model) {
		mapper.updateByPrimaryKeySelective(model);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<AdminUsers> queryAll() {
		return mapper.selectAll();
		}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(AdminUsers  model) {
        mapper.delete(model);
	}





}