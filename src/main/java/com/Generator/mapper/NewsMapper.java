package com.Generator.mapper;
import java.util.List;
import com.Generator.model.News;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.Generator.utils.MyMapper;
//author:xuyuanfeng
public interface  NewsMapper extends MyMapper<News>
{

	

}