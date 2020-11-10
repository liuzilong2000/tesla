<template>
  <div id="headerNav">
			<!-- 导航栏 -->
			<header>
				<div class="container m-0 p-0 w-100">
					<div  class="header row no-gutters" >
						<div class="h_logo col-xl-4">
							<a href=""><img src="/image/logo.png" alt=""></a>
						</div>
						<div class="h_middle col-xl-4 d-flex d-sm-none d-xl-block">
							<ul class="list-unstyled d-flex justify-content-center">
								<li><a href="/models">MODEL S</a></li>
								<li><a href="/model3">MODEL 3</a></li>
								<li><a href="/modelx">MODEL X</a></li>
								<li><a href="/modely">MODEL Y</a></li>
							</ul>
						</div>
						<div class="h_right col-xl-4 d-sm-none d-xl-block">
							<ul class="list-unstyled  d-flex justify-content-end">
								<li><a href="">在线商城</a></li>
								<li><a href="">TESLA 账户</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 菜单栏 -->
				<div class="inner-header" @click="handel">
					<!--两条横线菜单-->
					<div class="inner-header-icon inner-header-icon-out">
						<div></div><div></div><div></div>
					</div>
				</div>
			</header>
			<!-- 侧边导航栏 -->
			<div class="inner-nav" :style="{right}">
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
</template>
<style scoped>
			#headerNav{position:fixed;}
			.header{
				width:100%;
				position:fixed;
				margin-top:15px
			}      
			.h_logo img{
        width:90px;
				margin-left:20px;
				margin-top:-15px;
      }
			.h_middle a,.h_right a{
				color:#000;
				font-size:15px;
				margin:5px 15px
			}
			#headerNav a:hover{text-decoration: none;}
			.h_right ul{margin-right:45px}
			/* 制作右边菜单图标 */	
			.inner-header-icon div{
				width: 23px;
				height: 2px;
				background-color:#000;
			}
			.inner-header-icon div:nth-child(2){
				margin:3px 0px;
			}
			
			/* 规定菜单图标位于图层最上方 */
			.inner-header-icon{
				position:fixed;
				top:20px;
				right:20px;
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
				width:20%;
			  top: 0;
			  bottom: 0;
			  right: 0;
			  background-color:#fff;
				z-index:10;
				padding:30px 30px;
				transition:0.5s;
		 }
		 .inner-nav table{width:200px;height:70%}
		 .inner-nav table td{border-bottom: 1px solid #c3baba;}
		 .inner-nav a{font-size: 13px;color:#000}  
</style>
<script>
export default {
  data(){
		return{
			show:false,
			right:"-23%"
		}
	},
	methods:{
		handel(){
			if(this.show){
				this.show=false;
				this.right="-23%"
			}else{
				this.show=true;
				this.right="0px"
			}
		}
	}
}
</script>