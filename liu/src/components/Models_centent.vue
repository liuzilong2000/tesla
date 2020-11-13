<template>
    <div id="models_centent">
        <!-- 车基础情况 -->
        <ul class='w-100' :class="ul" :style='flex'>
            <li>
                <div><slot name='content1Div'></slot></div>
                <p><slot name='content1P'></slot></p>
            </li>
            <li class="shu" :style='size'></li>
            <li>
                <div><slot name='content2Div'></slot></div>
                <p><slot name='content2P'></slot></p>
            </li>
            <li class="shu" :style='size'></li>
            <li>
                <div><slot name='content3Div'></slot></div>
                <p><slot name='content3P'></slot></p>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    data(){
        return{
            ul:{
                ul:false
            },
            flex:'',
            size:'',
        }
    },
    methods:{
        models_cententChange(live,flex){
            // 进入 移出
            if(live){
                this.ul.ul=true;
            }else{
                this.ul.ul=false;
            }
            // 是否横向显示
            if(flex){
                this.flex='display:flex;justifyContent: center';
                this.size = 'width: 1px; height: 70px;'
            }else{
                this.size = 'width: 70px; height: 1px; margin-top:40px; margin-bottom:40px'
            }
            
        }
    }
}
</script>

<style>
/* 车基础情况 */
#models_centent{
    width: 100%;
}
#models_centent ul{
    position: absolute;
    bottom: 10px;
}
#models_centent .ul{
    bottom: 60px;
}
#models_centent  ul li{
    /* float: left; */
    margin:0 20px;
    text-align: center;
    color: #fff;
    text-align: start;
    
}
#models_centent  ul li:nth-child(1){
    transition: 0.5s;
}
#models_centent  ul li:nth-child(2){
    transition: 1s 0.1s;
}
#models_centent  ul li:nth-child(3){
    transition: 1.5s 0.1s;
}
#models_centent  ul li:nth-child(4){
    transition: 2s 0.3s;
}
#models_centent  ul li:nth-child(5){
    transition: 2.5s 0.3s;
}
#models_centent  ul li:nth-child(6){
    transition: 3s 0.5s;
}
#models_centent  .box3Change ul li{
    opacity: 1;
    
}
/* 当滑动到第三页所触发的动画 */
/* 竖线 */
#models_centent  ul .shu{ 
    background-color: #fff;
    display: block;
}
#models_centent  ul li:nth-child(3) div::after{
    content: '';
    display: block;
    clear: both;
}
/* 设置字体大小 */
#models_centent  ul li div,
#models_centent  ul li div i{
    font-size: 25px;
    font-weight: 500;
}
#models_centent  ul li p{
    font-size: 12px;
}
/* 进入第三页动画 */
#models_centent ul li{
    opacity: 0;
}
#models_centent .ul li{
    opacity: 1;
}
#models_centent{
    float: right;
}

</style>