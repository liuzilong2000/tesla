<template>
  <div id="foot">
    <div v-if="show">
      <ul class="nav">
				<li class="nav-item">
					<a class="nav-link" href="">Tesla&copy;</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="">沪ICP备14038430号-1</a>
				</li>
				<li class="nav-item">
					<a class="nav-link"  href="/">隐私和法律</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="">联系我们</a>
				</li>
        <li class="nav-item d-md-block d-none">
					<a class="nav-link" href="">工作机会</a>
				</li>
        <li class="nav-item d-xl-block d-none">
					<a class="nav-link" href="">最新消息</a>
				</li>
			</ul>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      show:true
    }
  }
}
</script>
<style>
#foot{
  position:fixed;
  bottom:10px;
  width:100%;
  z-index:60;
  transition:1s
}
  #foot div{
    width:70%;
    margin:0 auto;
    text-align: center;
  }
  #foot div ul{
    display:table;
    text-align: center;
    margin:0 auto;
  }
  #foot div li{
    float: left;
  }
  @media (max-width: 420px) {
    #foot div li{
      flex: 1;
      float: none;
    }
  }
  #foot div a{
    color:#000;
  }
</style>