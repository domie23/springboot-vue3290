package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschanpinshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschanpinshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschanpinshangchengView;


/**
 * 产品商城评论表
 *
 * @author 
 * @email 
 * @date 2022-04-11 16:37:39
 */
public interface DiscusschanpinshangchengService extends IService<DiscusschanpinshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschanpinshangchengVO> selectListVO(Wrapper<DiscusschanpinshangchengEntity> wrapper);
   	
   	DiscusschanpinshangchengVO selectVO(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
   	
   	List<DiscusschanpinshangchengView> selectListView(Wrapper<DiscusschanpinshangchengEntity> wrapper);
   	
   	DiscusschanpinshangchengView selectView(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschanpinshangchengEntity> wrapper);
   	

}

