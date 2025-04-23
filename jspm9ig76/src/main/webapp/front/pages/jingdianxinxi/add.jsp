<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
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
			margin: 0 auto;
		}
		#swiper .layui-carousel-ind li {
			width: 50px;
			height: 2px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(255, 255, 255, 1);
			border-radius: 0px;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0 0px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 50px;
			height: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 15px;
			color: #333;
			border-radius: 4px;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(240, 86, 84, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
		}
	</style>
	<body>


		<div id="app">
		
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(255, 255, 255, 1)","borderRadius":"0px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"padding":"20px","boxShadow":"1px 1px 6px rgba(240, 86, 84, 1)","margin":"30px auto","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","borderRadius":"10px","borderWidth":"0","borderStyle":"solid"}'>
		
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">景点名称：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.jingdianmingcheng" type="text" :readonly="ro.jingdianmingcheng" name="jingdianmingcheng" id="jingdianmingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
		                <label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">景点类型</label>
		                <div class="layui-input-block">
		                    <select name="jingdianleixing" id="jingdianleixing" lay-filter="jingdianleixing"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in jingdianleixing" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
		                <label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">等级</label>
		                <div class="layui-input-block">
		                    <select name="dengji" id="dengji" lay-filter="dengji"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in dengji" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">图片：</label>
						<div v-if="detail.tupian" class="layui-input-block">
							<img id="tupianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="baseurl+detail.tupian">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' type="hidden" :value="detail.tupian" id="tupian" name="tupian" />
						</div>
						<div class="layui-input-block">
							<button v-if="!ro.tupian" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.5)","margin":"0 10px 0 0","borderColor":"#ccc","backgroundColor":"rgba(240, 86, 84, 1)","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="button" class="layui-btn btn-theme" id="tupianUpload">
								<i v-if="true" :style='{"color":"#fff","show":true,"fontSize":"15px"}' class="layui-icon">&#xe67c;</i>上传图片
							</button>
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">票价：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.piaojia" type="text" :readonly="ro.piaojia" name="piaojia" id="piaojia" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">票数：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.piaoshu" type="text" :readonly="ro.piaoshu" name="piaoshu" id="piaoshu" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">城市：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.chengshi" type="text" :readonly="ro.chengshi" name="chengshi" id="chengshi" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">开放时间：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.kaifangshijian" type="text" :readonly="ro.kaifangshijian" name="kaifangshijian" id="kaifangshijian" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">服务电话：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.fuwudianhua" type="text" :readonly="ro.fuwudianhua" name="fuwudianhua" id="fuwudianhua" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">详细地址：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(240, 86, 84, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"4px","textAlign":"left","borderWidth":"0px 0px 1px 0px","fontSize":"15px","borderStyle":"solid","height":"40px"}' v-model="detail.xiangxidizhi" type="text" :readonly="ro.xiangxidizhi" name="xiangxidizhi" id="xiangxidizhi" autocomplete="off" class="layui-input">
						</div>
					</div>
		            
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"120px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">景点介绍：</label>
						<div class="layui-input-block">
							<textarea name="jingdianjieshao" id="jingdianjieshao">请输入景点介绍</textarea>
						</div>
					</div>
		
					<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(255, 255, 255, 1)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 1px 0","borderStyle":"solid"}' class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.5)","margin":"0 10px","borderColor":"#ccc","backgroundColor":"rgba(240, 86, 84, 1)","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"25%","fontSize":"14px","borderStyle":"solid","height":"44px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.5)","margin":"0 10px","borderColor":"#ccc","backgroundColor":"rgba(30, 144, 255, 1)","color":"rgba(16, 16, 17, 1)","borderRadius":"8px","borderWidth":"0","width":"20%","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        jingdianmingcheng : false,
                                        jingdianleixing : false,
                                        dengji : false,
                                        tupian : false,
                                        piaojia : false,
                                        piaoshu : false,
                                        chengshi : false,
                                        kaifangshijian : false,
                                        fuwudianhua : false,
                                        xiangxidizhi : false,
                                        jingdianjieshao : false,
					},
                    detail: {
                        jingdianmingcheng: '',
                        jingdianleixing: '',
                        dengji: '',
                        tupian: '',
                        piaojia: '',
                        piaoshu: '',
                        chengshi: '',
                        kaifangshijian: '',
                        fuwudianhua: '',
                        xiangxidizhi: '',
                        jingdianjieshao: '',
                    },
					jingdianleixing: [],
					dengji: 'A,AA,AAA,AAAA,AAAAA'.split(','),
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '500px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3150',
						  	indicator: 'inside'
						  });
						
						})
					}
				});

				http.request(`option/jingdianleixing/jingdianleixing`,'get',{},(res)=>{
					vue.jingdianleixing = res.data
				});
                form.on('select(dengji)', function (data) {
                    vue.detail.dengji=data.value;
                });
				// 上传图片
				var tupianUpload = upload.render({
					//绑定元素
					elem: '#tupianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#tupian').val(url);
							jquery('#tupianImg').attr('src', http.baseurl +url)
							vue.detail.tupian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var edit = tinymce.render({
                    elem: "#jingdianjieshao",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='jingdianmingcheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.jingdianmingcheng = true;
                                                continue;
                                        }
                                        if(o=='jingdianleixing'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.jingdianleixing = true;
                                                continue;
                                        }
                                        if(o=='dengji'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dengji = true;
                                                continue;
                                        }
                                        if(o=='tupian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.tupian = true;
                                                continue;
                                        }
                                        if(o=='piaojia'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.piaojia = true;
                                                continue;
                                        }
                                        if(o=='piaoshu'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.piaoshu = true;
                                                continue;
                                        }
                                        if(o=='chengshi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.chengshi = true;
                                                continue;
                                        }
                                        if(o=='kaifangshijian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.kaifangshijian = true;
                                                continue;
                                        }
                                        if(o=='fuwudianhua'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.fuwudianhua = true;
                                                continue;
                                        }
                                        if(o=='xiangxidizhi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xiangxidizhi = true;
                                                continue;
                                        }
                                        if(o=='jingdianjieshao'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.jingdianjieshao = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.jingdianmingcheng){
                        layer.msg('景点名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jingdianleixing){
                        layer.msg('景点类型不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.piaojia){
                        layer.msg('票价不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.piaojia)){
                        layer.msg('票价应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.piaoshu){
                        layer.msg('票数不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.piaoshu)){
                        layer.msg('票数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.chengshi){
                        layer.msg('城市不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isMobile(data.fuwudianhua)){
                        layer.msg('服务电话应输入手机格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var jingdianjieshao = tinymce.get('#jingdianjieshao').getContent()
					data.jingdianjieshao = jingdianjieshao;

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('jingdianxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('jingdianxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('jingdianxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
