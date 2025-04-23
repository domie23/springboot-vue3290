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


import com.dao.ChanpinshangchengDao;
import com.entity.ChanpinshangchengEntity;
import com.service.ChanpinshangchengService;
import com.entity.vo.ChanpinshangchengVO;
import com.entity.view.ChanpinshangchengView;

@Service("chanpinshangchengService")
public class ChanpinshangchengServiceImpl extends ServiceImpl<ChanpinshangchengDao, ChanpinshangchengEntity> implements ChanpinshangchengService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChanpinshangchengEntity> page = this.selectPage(
                new Query<ChanpinshangchengEntity>(params).getPage(),
                new EntityWrapper<ChanpinshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChanpinshangchengEntity> wrapper) {
		  Page<ChanpinshangchengView> page =new Query<ChanpinshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChanpinshangchengVO> selectListVO(Wrapper<ChanpinshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChanpinshangchengVO selectVO(Wrapper<ChanpinshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChanpinshangchengView> selectListView(Wrapper<ChanpinshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChanpinshangchengView selectView(Wrapper<ChanpinshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
