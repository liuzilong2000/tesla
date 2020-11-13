<template>
  <div id="headerNav">
		<!-- 导航栏 -->
		<header>
			<div class="container-fiuled">
				<div  class="header row no-gutters" >
					<!-- 顶部导航logo -->
					<div class="h_logo col-xl-3">
						<a href=""><slot><img src="/images/logo1.png" alt=""></slot></a>
					</div>

					<!-- 顶部导航中间 -->
					<div class="h_middle col-xl-6 d-flex  d-sm-none d-xl-block">
						<ul class="list-unstyled d-flex justify-content-center">
							<li><a href="/models">MODEL S</a></li>
							<li><a href="/model3">MODEL 3</a></li>
							<li><a href="/modelx">MODEL X</a></li>
							<li><a href="/modely">MODEL Y</a></li>
						</ul>
					</div>

					<!-- 顶部导航右侧文本-->
					<div class="h_right col-xl-3 d-sm-none d-xl-block">
						<ul class="list-unstyled  d-flex justify-content-end">
							<li><a href="">在线商城</a></li>
							<li><a href="/login">TESLA 账户</a></li>
						</ul>
					</div>
				</div>
			</div>
		
		</header>
		<!-- 侧边导航栏 -->
		<div id="navbar"  :style="{width}">
			<!-- 菜单图标 -->
			<div class="inner-header" @click="handel">
				<!--三条横线-->
				<div class="inner-header-icon inner-header-icon-out" :class="change">
					<div></div>
					<div></div>
					<div></div>
				</div>
			</div>
			<div class="inner-nav" :style="nav">
				<table>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
					<tr><td><a href="">认证二手车</a></td></tr>
				</table>
			</div>
			<!-- 点击菜单出现覆盖页 -->
			<div class="cover" v-show="show"></div>
		</div>	
	</div>
</template>
<script>
export default {
	data(){
		return{
			show:false,
			width:"0%",
			nav:{ right:"-100%",width:"100%"},
			// 点击按钮切换样式
			change:{
				change:false,
			},
			time:'',
		}
	},
	methods:{
		handel(){
			if(this.show){
				this.show=false;
				this.width = "20%";
				this.nav={right:"-100%"}
				// 点击按钮切换样式
				this.change.change=false;
			}else{
				this.show=true;
				this.width = "100%";
				this.nav={right:"0px"}
				// 点击按钮切换样式
				this.change.change=true;
			}
		}
	},
	watch:{
		width(){
			if(this.width == '100%'){
				if(this.time){
					clearTimeout(this.time);
				}
			}
			if(this.width == '20%'){
				this.time = setTimeout(()=>{
					this.width = '0%'
				},500)
			}
		}
	}
}
</script>
<style>
/* z-index保证导航栏在图层顶部 */
	#headerNav header{
		position: fixed;
		width:100%;
		z-index: 30;
	}
	#headerNav .header{
		padding-top:15px
	}      
	#headerNav .h_logo img{
    	width:90px;
		margin-left:20px;
		margin-top:-12px
  	}
	#headerNav	.h_middle a,.h_right a{
		color:#000;
		font-size:15px;
		margin:5px 15px
	}
	#headerNav a:hover{text-decoration: none;}
	#headerNav .h_right ul{margin-right:45px}

	/* 侧边栏 */
	#navbar{
    	position:absolute;
    	overflow:hidden;
		right:0;
    	top:0;
		height:100%;
    	z-index:66;
  }
	/* #navbar .open{width:100% important;height:100% } */
  /* 制作右边菜单图标 */	
	#navbar	.inner-header-icon div{
		width:19px;
		height: 2px;
		background-color:#000;
		transition: 0.5s;
	}
	/* 侧边栏按钮样式 */
	#navbar	.change div:first-child{
		transform-origin:0 0;
		transform:rotate(42deg);
		background-color: #000;
	}
	#navbar	.change div:nth-child(2){
		opacity: 0;
	}
	#navbar	.change div:last-child{
		transform-origin:0 0;
		margin-top:5px;
		transform:rotate(-45deg);
		background-color: #000;
	}

	#navbar	.inner-header-icon div:nth-child(2){
		margin:4px 0px;
	}
			
	/* 规定菜单图标位于图层最上方 */
	.inner-header-icon{
		position:fixed;
		top:20px;
		right:22px;
		z-index:50;
	}
			
	/* 当点击菜单栏时，该div出现并覆盖页面 */	
	.cover{
		position:absolute;
		width:100%;
		top:0px;
		bottom:0px;
		background-color:#000;
		opacity: 0.3;
	}
	

	/* 侧边栏 */
	.inner-nav{
		position: absolute;
		top: 0;
		bottom: 0;
		background-color:#fff;
		z-index:10;
		padding:30px 30px;
		transition:right 0.5s;
	}
	.inner-nav table{width:200px;height:70%}
	.inner-nav table td{border-bottom: 1px solid #c3baba;}
	.inner-nav a{font-size: 13px;color:#000}  
</style>