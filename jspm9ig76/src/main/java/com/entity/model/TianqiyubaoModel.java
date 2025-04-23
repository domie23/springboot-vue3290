package com.entity.model;

import com.entity.TianqiyubaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 天气预报
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-11 16:37:39
 */
public class TianqiyubaoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 天气
	 */
	
	private String tianqi;
		
	/**
	 * 气温
	 */
	
	private String qiwen;
		
	/**
	 * 湿度
	 */
	
	private String shidu;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 风向
	 */
	
	private String fengxiang;
		
	/**
	 * 风速
	 */
	
	private String fengsu;
		
	/**
	 * 变化提醒
	 */
	
	private String bianhuatixing;
		
	/**
	 * 更新时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date gengxinshijian;
				
	
	/**
	 * 设置：天气
	 */
	 
	public void setTianqi(String tianqi) {
		this.tianqi = tianqi;
	}
	
	/**
	 * 获取：天气
	 */
	public String getTianqi() {
		return tianqi;
	}
				
	
	/**
	 * 设置：气温
	 */
	 
	public void setQiwen(String qiwen) {
		this.qiwen = qiwen;
	}
	
	/**
	 * 获取：气温
	 */
	public String getQiwen() {
		return qiwen;
	}
				
	
	/**
	 * 设置：湿度
	 */
	 
	public void setShidu(String shidu) {
		this.shidu = shidu;
	}
	
	/**
	 * 获取：湿度
	 */
	public String getShidu() {
		return shidu;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：风向
	 */
	 
	public void setFengxiang(String fengxiang) {
		this.fengxiang = fengxiang;
	}
	
	/**
	 * 获取：风向
	 */
	public String getFengxiang() {
		return fengxiang;
	}
				
	
	/**
	 * 设置：风速
	 */
	 
	public void setFengsu(String fengsu) {
		this.fengsu = fengsu;
	}
	
	/**
	 * 获取：风速
	 */
	public String getFengsu() {
		return fengsu;
	}
				
	
	/**
	 * 设置：变化提醒
	 */
	 
	public void setBianhuatixing(String bianhuatixing) {
		this.bianhuatixing = bianhuatixing;
	}
	
	/**
	 * 获取：变化提醒
	 */
	public String getBianhuatixing() {
		return bianhuatixing;
	}
				
	
	/**
	 * 设置：更新时间
	 */
	 
	public void setGengxinshijian(Date gengxinshijian) {
		this.gengxinshijian = gengxinshijian;
	}
	
	/**
	 * 获取：更新时间
	 */
	public Date getGengxinshijian() {
		return gengxinshijian;
	}
			
}
