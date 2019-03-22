package com.Generator.serviceImp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.model.AdminLogs;
import com.Generator.mapper.AdminLogsMapper;


import com.Generator.service.AdminLogsService;
//author:xuyuanfeng
@Service
public class AdminLogsServiceImp implements AdminLogsService
{
    @Autowired
    private AdminLogsMapper mapper;


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(AdminLogs model) {
		mapper.insert(model);
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(AdminLogs model) {
		mapper.updateByPrimaryKeySelective(model);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<AdminLogs> queryAll() {
		return mapper.selectAll();
		}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(AdminLogs  model) {
        mapper.delete(model);
	}





}