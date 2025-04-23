package com.dao;

import com.entity.DiscusschanpinshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschanpinshangchengVO;
import com.entity.view.DiscusschanpinshangchengView;


/**
 * 产品商城评论表
 * 
 * @author 
 * @email 
 * @date 2022-04-11 16:37:39
 */
public interface DiscusschanpinshangchengDao extends BaseMapper<DiscusschanpinshangchengEntity> {
	
	List<DiscusschanpinshangchengVO> selectListVO(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
	
	DiscusschanpinshangchengVO selectVO(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
	
	List<DiscusschanpinshangchengView> selectListView(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);

	List<DiscusschanpinshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
	
	DiscusschanpinshangchengView selectView(@Param("ew") Wrapper<DiscusschanpinshangchengEntity> wrapper);
	

}
