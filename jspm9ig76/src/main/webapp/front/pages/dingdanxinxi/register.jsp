<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
			</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		.register {
			display: flex;
			justify-content: center;
			align-items: center;
		    width: 100%;
		    height: 100%;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
									background-image: url(http://codegen.caihongy.cn/20210302/77a2473fdb7e48b2a40f125232af1a6e.jpg);
								}
		.register form {
			box-sizing: border-box;
			min-height: 400px;
			display: flex;
			flex-direction: column;
			justify-content: center;
		}
		.register .logo, .register .title {
			box-sizing: border-box;
		}
		.register .logo img {
			display: block;
		}
		.register .title {
			text-align: center;
		}
		.register .form-item {
			display: flex;
			align-items: center;
			flex-wrap: wrap;
			box-sizing: border-box;
		}
		.register .form-item input, .register .form-label {
			box-sizing: border-box;
		}
        .register .btn-submit {
        	display: block;
        	box-sizing: border-box;
            height: 40px !important;
        }
        .register .layui-btn-primary {
            height: 40px !important;
        }
		.register form p.txt {
			width: 100%;
			margin: 0;
			box-sizing: border-box;
		}
	</style>
	<body>
				<div class="register" id="app" style="position:relative">
			<form class="layui-form login-form" :style='{"padding":"20px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","borderRadius":"20px","borderWidth":"0","width":"500px","borderStyle":"solid","justifyContent":"center","height":"auto"}'>
				<h2 class="logo" v-if="false" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px auto 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"#f7f7f7","color":"rgba(110,22,64,1)","isshow":false,"borderRadius":"8px","borderWidth":"0","width":"auto","lineHeight":"32px","fontSize":"12px","borderStyle":"solid"}'>USER / REGISTER</h2>
				<div class="title" v-if="true" :style='{"padding":"0","boxShadow":"0px 6px 0 0px rgba(240, 86, 84, 1)","margin":"10px auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(0,0,0,0)","color":"rgba(18, 18, 18, 1)","isshow":true,"borderRadius":"100%","borderWidth":"0","width":"64px","lineHeight":"38px","fontSize":"15px","borderStyle":"solid"}'>订单信息注册</p></div>
			

                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">特产名称：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="techanmingcheng" name="techanmingcheng" placeholder="请输入特产名称" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">特产类型：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="techanleixing" name="techanleixing" placeholder="请输入特产类型" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">价格：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="jiage" name="jiage" placeholder="请输入价格" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">数量：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="shuliang" name="shuliang" placeholder="请输入数量" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">用户名：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="yonghuming" name="yonghuming" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">姓名：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0 0 1px 0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
					<label v-if="true" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"0","width":"120px","fontSize":"16px","borderStyle":"solid"}' class="layui-form-label">手机：</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(241, 58, 58, 1)","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"200px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="text" id="shouji" name="shouji" placeholder="请输入手机" autocomplete="off" class="layui-input">
				</div>

				<div style="display:flex;flex-wrap:wrap;">
					<button :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.5)","margin":"10px 5% 10px 40px","borderColor":"#ccc","backgroundColor":"rgba(241, 58, 58, 1)","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
					<button :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.5)","margin":"10px 0 10px 5%","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(110,22,64,1)","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
				<p :style='{"color":"rgba(0, 52, 114, 1)","textAlign":"center","fontSize":"12px"}' class="txt"><a style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a></p>
			</form>
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
				<script>
			var vue = new Vue({
			  el: '#app',
			  data: {
			  },
			  methods: {
				
			  }
			});
			
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;
				var tablename = http.getParam('tablename');
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!data.techanmingcheng){
                        layer.msg('特产名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.techanleixing){
                        layer.msg('特产类型不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jiage){
                        layer.msg('价格不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.jiage)){
                        layer.msg('价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.shuliang){
                        layer.msg('数量不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.shuliang)){
                        layer.msg('数量应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.zongjiage)){
                        layer.msg('总价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isMobile(data.shouji)){
                        layer.msg('手机应输入手机格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }


                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
