<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 8px;
			height: 2px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0, 0, 0, 0.3);
			border-radius: 2px;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0 0px ;
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 12px;
			height: 3px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 2px;
			background-color: rgba(255, 241, 67, 1);
			box-shadow: 0 0 0px rgba(110,22,64,.8);
		}
	
		input#buynumber::-webkit-outer-spin-button, input::-webkit-inner-spin-button { -webkit-appearance: none; }
		input#buynumber[type="number"]{ -moz-appearance: textfield; }
	
		.message-container {width: 100%}
	
		.detail-tab .layui-tab-card>.layui-tab-title .layui-this {
			background-color: rgba(255, 241, 67, 1);
			color: rgba(240, 86, 84, 1);
			font-size: 15px;
		}
	
	.data-detail {
	  padding-bottom: 20px;
	}
	
	.data-detail .layui-breadcrumb a.first {
	  color: rgba(8, 8, 8, 1) !important;
	}
	</style>
	<body>

		<div id="app">
			<div class="data-detail" style="padding:0;">
				<div class="data-detail-breadcrumb" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255, 241, 67, 1)","margin":"20px auto","borderColor":"rgba(8, 8, 8, 1)","backgroundColor":"rgba(255, 241, 67, 1)","borderRadius":"4px","borderWidth":"1px","borderStyle":"solid","height":"54px"}'>
					<span class="layui-breadcrumb">
						<a class="first" :style='{"padding":"8px 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 5px","borderColor":"rgba(255, 241, 67, 1)","backgroundColor":"rgba(255, 241, 67, 1)","color":"rgba(8, 8, 8, 1)","borderRadius":"0","borderWidth":"0","fontSize":"18px","borderStyle":"solid"}' href="../home/home.jsp">首页</a>
						<a><cite :style='{"padding":"8px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","margin":"0 15px","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"rgba(240, 86, 84, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","borderWidth":"0","fontSize":"17px","borderStyle":"solid"}'>{{title}}</cite></a>
					</span>

					<a v-if='storeupFlag' :style='{"padding":"10px 3px","boxShadow":"0 0 0px rgba(255, 255, 255, 1)","borderColor":"rgba(13, 13, 13, 1)","backgroundColor":"rgba(255, 241, 67, 1)","color":"rgba(255, 241, 67, 1)","borderRadius":"4px","borderWidth":"0px","fontSize":"0px","lineHeight":"20px","borderStyle":"solid"}' @click="storeUp()" href="javascript:void(0)">
						<i class="layui-icon" style="font-size: 20px;color: red;" v-if='true' :style='{"color":"rgba(240, 86, 84, 1)","padding":"0px 2px  0px 10px","fontSize":"25px"}'>&#xe67a;</i>取消收藏
					</a>
					<a v-if='!storeupFlag' :style='{"padding":"10px 3px","boxShadow":"0 0 0px rgba(255, 255, 255, 1)","borderColor":"rgba(13, 13, 13, 1)","backgroundColor":"rgba(255, 241, 67, 1)","color":"rgba(255, 241, 67, 1)","borderRadius":"4px","borderWidth":"0px","fontSize":"0px","lineHeight":"20px","borderStyle":"solid"}' @click="storeUp()" href="javascript:void(0)">
						<i class="layui-icon" style="font-size: 20px;color: red;" v-if='true' :style='{"color":"rgba(240, 86, 84, 1)","padding":"0px 2px  0px 10px","fontSize":"25px"}'>&#xe67b;</i>点我收藏
					</a>

				</div>
			</div>
			<div class="data-detail" style="padding:0;width:100%;" :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"rgba(255, 255, 255, 0.3)","borderStyle":"solid"}'>
				<div class="layui-row" style="display: flex;width:980px;margin: 0 auto;">
					<div class="layui-col-md5" style="width:430px">
						<!-- <div class="layui-carousel" id="swiper">
							<div carousel-item id="swiper-item">
								<div v-for="(item,index) in swiperList" v-bind:key="index">
									<img class="swiper-item" :src="item.img">
								</div>
							</div>
						</div> -->
						<div class="layui-carousel" id="swiper" :style='{"boxShadow":"2px 0 6px rgba(255, 241, 67, 1)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"4px","borderWidth":"0","width":"430px","borderStyle":"solid","height":"400px"}'>
						  <div carousel-item>
							<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img style="width: 100%;height: 100%;object-fit:cover;" :src="item" />
							</div>
						  </div>
						</div>



					</div>
					<div class="layui-col-md7" style="padding-left: 20px;flex: 1;" :style='{"padding":"0","boxShadow":"0 0 0px rgba(240, 86, 84, 1)","margin":"0 0 0 20px","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"1px","borderStyle":"solid"}'>
						<h1 style="position: relative;" :style='{"padding":"10px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"center","borderWidth":"0 0 1px 0","fontSize":"18px","borderStyle":"solid"}' class="title">{{title}}</h1>



						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>天气：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.tianqi}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>气温：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.qiwen}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>湿度：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.shidu}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>风向：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.fengxiang}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>风速：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.fengsu}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>变化提醒：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.bianhuatixing}}
							</span>
						</div>
						<div :style='{"padding":"6px 15px","boxShadow":"0 0 1px rgba(240, 86, 84, 1)","margin":"0","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="detail-item">
							<span :style='{"padding":"0 12px 0 0","minWidth":"110px","fontSize":"15px","color":"#333","textAlign":"left"}'>更新时间：</span>
							<span  :style='{"padding":"5px 15px","boxShadow":"0 0 0px rgba(110,22,64,.3)","borderColor":"rgba(255, 255, 255, 0.3)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"16px","borderStyle":"solid"}' class="desc">
								{{detail.gengxinshijian}}
							</span>
						</div>



					</div>
				</div>
				</div>
				
				<div class="data-detail">



				<div class="layui-row detail-tab">
					<div class="layui-tab layui-tab-card" :style='{"boxShadow":"0 0 1px rgba(10, 9, 9, 1)","borderColor":"rgba(10, 9, 9, 1)","backgroundColor":"#fff","borderRadius":"4px","borderStyle":"solid","borderWidth":"1px"}' style="overflow: hidden;">

						<ul class="layui-tab-title" :style='{"color":"rgba(21, 21, 21, 1)","backgroundColor":"rgba(255, 255, 255, 1)","fontSize":"14px"}'>











						</ul>
						<div style="word-break:break-all" class="layui-tab-content">











						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'tianqiyubao',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`tianqiyubao`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},



					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type:1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.fengmian,
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.chengshi;
					// 轮播图片
					vue.swiperList = vue.detail.fengmian ? [http.baseurl+vue.detail.fengmian.split(",")[0]] : [];
					// var swiperItemHtml = '';
					// for (let item of vue.swiperList) {
					// 	swiperItemHtml +=
					// 		'<div>' +
					// 		'<img class="swiper-item" style="width: 100%;height: 100%;object-fit:cover;" src="' + item + '">' +
					// 		'</div>';
					// }
					// jquery('#swiper-item').html(swiperItemHtml);
					// 轮播图
					vue.$nextTick(() => {
					  carousel.render({
					  	elem: '#swiper',
						width: '430px',
					  	height: '400px',
					  	arrow: 'hover',
					  	anim: 'default',
					  	autoplay: 'true',
					  	interval: '3000',
					  	indicator: 'inside'
					  });
					
					})


				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}


			});
		</script>
	</body>
</html>
