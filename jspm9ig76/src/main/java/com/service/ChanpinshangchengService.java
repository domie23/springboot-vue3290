package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChanpinshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChanpinshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChanpinshangchengView;


/**
 * 产品商城
 *
 * @author 
 * @email 
 * @date 2022-04-11 16:37:39
 */
public interface ChanpinshangchengService extends IService<ChanpinshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChanpinshangchengVO> selectListVO(Wrapper<ChanpinshangchengEntity> wrapper);
   	
   	ChanpinshangchengVO selectVO(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
   	
   	List<ChanpinshangchengView> selectListView(Wrapper<ChanpinshangchengEntity> wrapper);
   	
   	ChanpinshangchengView selectView(@Param("ew") Wrapper<ChanpinshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChanpinshangchengEntity> wrapper);
   	

}

