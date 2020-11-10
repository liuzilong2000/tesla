<template>
    <div class="login" @click.stop="loginBtn">
		<!-- 顶部 -->
		<login-nav/>
		<!-- 登录模块 -->
		<div class="my_login d-flex justify-content-center">
			<div class="flex-column">
				<h2>登录</h2>
				<div>
					<!-- 密码输入错误提示 -->
					<div class="topFailTips" v-show="topFailTips">
						<i class="iconfont">&#xe710;</i>
						账户邮箱或者密码不正确
					</div>
					<!-- 输入框 -->
					<!-- <p>电子邮箱地址 
						<span>
							<i class="iconfont tips_btn" @click.stop='tips_btn'>&#xe63b;
								<div class="tips" v-show='tipsShow'>
									<p>如果您不再使用与 Tesla 账户关联的电子邮箱，请登录您的 Tesla 账户后，前往账户设置更新电子邮箱地址。</p>
									<p>如果您无法登录，请访问我们的 
										<router-link to="/" class="logo">支持页面</router-link>获取帮助。
									</p>
								</div>
							</i>
						</span>
					</p>
					<div>
						<input type="text" class="inp" :class='nameFail' v-model='nameValue'>
					</div>	
					<p class="failTips" :style="nameFailTips">必须填写电子邮箱地址</p> -->
					<!-- 第一次引入组件 -->
					<my-input ref='myEmailInput'>
						<slot slot='input_title'>
							电子邮箱地址 
							<span>
								<i class="iconfont tips_btn" @click.stop='tips_btn'>&#xe63b;
									<div class="tips" v-show='tipsShow'>
										<p>如果您不再使用与 Tesla 账户关联的电子邮箱，请登录您的 Tesla 账户后，前往账户设置更新电子邮箱地址。</p>
										<p>如果您无法登录，请访问我们的 
											<router-link to="/" class="logo">支持页面 </router-link>获取帮助。
										</p>
									</div>
								</i>
							</span>
						</slot>
						<slot slot='input_tips'>必须填写电子邮箱地址</slot>
					</my-input>


					<!-- 第二次引入组件 -->
					<my-input ref='myPwdInput'>
						<slot slot='input_title'>密码</slot>
						<slot slot='input_tips'>必须输入密码</slot>
					</my-input>


					<!-- 登录按钮 -->
					<div>
						<input type="button" value="登录" class="login_btn" @click="login_btn">
					</div>
					<!-- 取消按钮 -->
					<div>
						<router-link to='/'><input type="button" value="取消" class="cancel_btn"></router-link>
					</div>
					<!-- 记性不好 -->
					<div class="forget">
						<router-link to="/">
							忘记电子邮箱？
						</router-link>
						<span>|</span>
						<router-link to="/">
							忘记密码？
						</router-link>
					</div>
					<div class="or">或</div>
					<router-link to="/register" class="logo"><input type="button" value="创建账户" class="cancel_btn"></router-link>
					
				</div>
			</div>
		</div>
		<!-- 底部分 -->
		<login-footer/>
    </div>
</template>

<script>
export default {
	data(){
		return{
			tipsShow:false, //提示显示隐藏
			topFailTips:true, //密码或邮箱输入错误顶部提示
		}
	},
    methods:{
		loginBtn(){
			if(this.tipsShow){
				this.tipsShow=false;
			}
		},
		// 显示隐藏提示框
		tips_btn(){
			this.tipsShow=!this.tipsShow;
		},
		// 登录按钮
		login_btn(){
			// 判断输入框是否为空
			let zz = /^\s*$/;
			// 邮箱
			this.$refs.myEmailInput.input_btn(zz,false);
			// 密码
			this.$refs.myPwdInput.input_btn(zz,false);


			// let nameV = this.nameValue;
			// let pwdV = this.pwdValue;
			
			// if(zz.test(nameV)){
			// 	this.nameFail.nameFail = true;
			// 	this.nameFailTips.opacity = 1;
			// }else{
			// 	this.nameFail.nameFail = false;
			// 	this.nameFailTips.opacity = 0;
			// }
			// if(zz.test(pwdV)){
			// 	this.pwdFail.pwdFail = true;
			// 	this.pwdFailTips.opacity = 1;
			// }else{
			// 	this.pwdFail.pwdFail = false;
			// 	this.pwdFailTips.opacity = 0;
			// }
			// //判断是否输入正确
			
		},
	},
	mounted(){
	}
}
// /* 设置邮箱 密码输入框 */
// .login .my_login .inp{
// 	margin-top:5px;
// 	background-color: #eeeeee;
// 	border:1px solid transparent;
// 	margin:0;
// }
// .login .my_login .inp:focus{
// 	border:1px solid #cacaca;
// }
// /* 登录失败后文本框样式 */
// .login .my_login .pwdFail{
// 	border:1px solid #f00;
// }
// .login .my_login .nameFail{
// 	border:1px solid #f00;
// }
// .login .my_login .failTips{
// 	float: right;
// 	text-align: end;
// 	width: 302px;
// 	margin:0 20px 10px 0;
// 	color:#f00;
// 	transition: 0.3s;
// }
// /* 密码输入错误 */
// .login .my_login .topFailTips{
// 	width: 332px;
// 	height: 50px;
// 	background-color: #ececec;
// 	border-radius: 10px;
// 	padding-left:20px;
// 	line-height: 50px;
// 	margin-bottom:10px;
// 	font-size: 14px;
// }
// .login .my_login .topFailTips i{
// 	color:#f00;
// }
// /* 设置提示文字 */
// .login .my_login p{
// 	margin-left:20px;
// 	font-size: 13px;
// }
// .login .my_login .tips_btn{
// 	cursor:pointer
// }
</script>


<style>
/* 登录模块 */
.login .my_login h2{
	margin:20px 0 ;
}
/* 设置所有input */
.login .my_login input{
	width: 332px;
	height: 40px;
	border-radius: 25px;
	padding:0 20px;
	margin: 0 0 20px 0;
	transition: 0.5s;
}

/* 设置登录按钮 */
.login .my_login .login_btn{
	margin-top:20px;
	border:1px solid #0066FF;
	background-color: #0066FF;
	color:#fff;
	font-size: 13px;
	cursor:pointer
}
/* 设置取消按钮  创建账户*/
.login .my_login .cancel_btn{
	border:3px solid #000;
	cursor:pointer;
	font-size: 13px;
}
.login .my_login .cancel_btn:hover{
	background-color: #000;
	color:#fff;
}
/* 设置忘记密码 */
.login .my_login .forget{
	color:#666666;
	text-align: center;
}
.login .my_login .forget span{
	padding:0 5px;
}
.login .my_login .forget a{
	color:#666666;
	font-size: 13px;
	border-bottom:1px solid #666;
	transition: 0.3s;
}
.login .my_login .forget a:hover{
	border-bottom: 2px solid #000;
}
/* 设置  或 */
.login .my_login .or{
	text-align: center;
	padding:40px;
}

/* 提示框 */
.login .my_login .tips{
	width: 300px;
	height: 150px;
	padding: 10px;
	background-color: #fff;
	box-shadow: 1px 4px 20px -6px #000000;
	position: absolute;
	transition: 0.3px;
}
.login .my_login .tips p{
	font-size: 14px;
	margin:0;
	color:#555555;
}
.login .my_login .tips p:nth-child(1){
	margin-bottom: 10px;
}
/* 密码输入错误 */
.login .my_login .topFailTips{
	width: 332px;
	height: 50px;
	background-color: #ececec;
	border-radius: 10px;
	padding-left:20px;
	line-height: 50px;
	margin-bottom:10px;
	font-size: 14px;
}
.login .my_login .topFailTips i{
	color:#f00;
}
</style>