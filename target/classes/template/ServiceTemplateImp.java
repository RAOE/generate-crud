package ${package};
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import ${modelPath}.${model};


import ${servicePath}.${serviceName};
//author:xuyuanfeng
@Service
public class ${className} implements ${serviceName}
{
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void addSubmit(${model} model) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(${model} model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<${model}> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
  
	
	
	

}