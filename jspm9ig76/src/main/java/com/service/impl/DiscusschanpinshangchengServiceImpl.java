package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscusschanpinshangchengDao;
import com.entity.DiscusschanpinshangchengEntity;
import com.service.DiscusschanpinshangchengService;
import com.entity.vo.DiscusschanpinshangchengVO;
import com.entity.view.DiscusschanpinshangchengView;

@Service("discusschanpinshangchengService")
public class DiscusschanpinshangchengServiceImpl extends ServiceImpl<DiscusschanpinshangchengDao, DiscusschanpinshangchengEntity> implements DiscusschanpinshangchengService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschanpinshangchengEntity> page = this.selectPage(
                new Query<DiscusschanpinshangchengEntity>(params).getPage(),
                new EntityWrapper<DiscusschanpinshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschanpinshangchengEntity> wrapper) {
		  Page<DiscusschanpinshangchengView> page =new Query<DiscusschanpinshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschanpinshangchengVO> selectListVO(Wrapper<DiscusschanpinshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschanpinshangchengVO selectVO(Wrapper<DiscusschanpinshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschanpinshangchengView> selectListView(Wrapper<DiscusschanpinshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschanpinshangchengView selectView(Wrapper<DiscusschanpinshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
