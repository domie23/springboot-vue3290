package com.dao;

import com.entity.ChanpinshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChanpinshangchengVO;
import com.entity.view.ChanpinshangchengView;


/**
 * 产品商城
 * 
 * @author 
 * @email 
 * @date 2022-04-11 16:37:39
 */
public interface ChanpinshangchengDao extends BaseMapper<ChanpinshangchengEntity> {
	
	List<ChanpinshangchengVO> selectListVO(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
	
	ChanpinshangchengVO selectVO(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
	
	List<ChanpinshangchengView> selectListView(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);

	List<ChanpinshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
	
	ChanpinshangchengView selectView(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
	

}
