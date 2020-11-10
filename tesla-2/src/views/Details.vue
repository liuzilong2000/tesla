
<template>
    <div id="models">
        <my-header/>
        <full-page :options="options">
            <my-header/>
            <!-- ----------------------第一屏 ------------------------->
            <div class="section">
                <my-header/>
                <div class="box1">
                    <!-- 车型号 -->
                    <div class='modelsTitle'>
                        <div :class="change">
                            <h1>Model S</h1>
                            <p>Tesla 豪华旗舰轿车</p>
                        </div>
                    </div>
                    <!-- 车基础情况 -->
                    <div class="modelsParameter">
                        <div :class="change">
                            <ul class='w-100 d-flex justify-content-center'>
                            <!-- 百公里加速 -->
                            <li>
                                <div>
                                    <div class="miao">
                                        <div><i class="iconfont">&#xe603;</i></div>
                                        <div class="num1">
                                            0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9
                                        </div>
                                        <div>.</div>
                                        <div class="num2">
                                            0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br>0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9
                                        </div>
                                        <div>秒</div>
                                    </div>
                                </div>
                                <p>百公里加速</p>
                            </li>
                            <li class="shu"></li>
                            <!-- 超大载物空间 -->
                            <li>
                                <div>804升</div>
                                <p>超大载物空间</p>
                            </li>
                            <li class="shu"></li>
                            <!-- 续航里程 -->
                            <li>
                                <div>719公里</div>
                                <p>续航里程</p>
                                <p>国际工况法</p>
                            </li>
                            <!-- 立即订购 -->
                            <li>
                                <button>立即订购</button>
                            </li>
                        </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ----------------------第二屏---------------------- -->
            <div class="section">
                <div class="box2">
                    <!-- 左边简介 -->
                    <div>

                    </div>
                    <!-- 右边模型 -->
                </div>
            </div>
            <div class="section">
                <div class="box3">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box4">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box5">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box6">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box7">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box8">
                section3
                </div>
            </div>
            <div class="section">
                <div class="box9">
                section3
                </div>
            </div>
        </full-page>
    </div>
</template>
 
<script>
export default {
    name: '',
    data(){
        return {
            options: {
                licenseKey: 'OPEN-SOURCE-GPLV3-LICENSE',
                afterLoad: this.afterLoad,
                scrollOverflow: false,
                scrollBar: false,    //是否显示滚动条
                menu: '#menu',
                navigation:true,
                // autoScrolling:false,
                slidesNavigation:true,
                // loopBottom:true,     //滚动到最后回到第一页
                
                
                // anchors: ['page1', 'page2', 'page3'],
                // sectionsColor: ['#41b883', '#ff5f45', '#0798ec', '#fec401', '#1bcee6', '#ee1a59', '#2c3e4f', '#ba5be9', '#b4b8ab'] //页面颜色
                afterLoad: this.afterLoad,
            },
            change:{change:false},
        }
    },
    methods:{
        afterLoad(anchors,item){
            if(item.index == 0){   //第一屏
                this.change.change = true;
            }else{
                this.change.change = false;
            }
        }
    }
}
</script>
 
<style>
/* -------------第一屏------------------ */
#models .section{
    position: relative;
}
#models .box1{
    width:100%;
    height: 100%;
    background: url('/images/MODELS/model-s@2x.jpg') no-repeat center;
    background-size:cover;
}
/* 车型号 */
#models .box1 .modelsTitle{
    text-align: center;
    width: 100%;
    color:#fff;
    padding-top:9vh;
}
#models .box1 .modelsTitle h1,
#models .box1 .modelsTitle p{
    position: absolute;
    top:160px;
    left:50%;
    transform: translate(-50%);
    opacity: 0;
    transition: 1.5s;
}
#models .box1 .modelsTitle p{
    font-weight: 900;
    font-size: 16px;
}
/* 当滑动到当前页所触发的动画 */
#models .box1 .modelsTitle > .change p,
#models .box1 .modelsTitle > .change h1{
    opacity: 1;
}
#models .box1 .modelsTitle > .change h1{
    top:100px;
}
#models .box1 .modelsTitle > .change p{
    top:150px;
}
/* 车基础情况 */
#models .modelsParameter{
    width: 100%;
    
}
#models .modelsParameter ul{
    position: absolute;
    bottom: 60px;
}
#models .modelsParameter ul li{
    /* float: left; */
    margin:0 20px;
    text-align: center;
}
#models .modelsParameter ul li:nth-child(1){
    transition: 0.5s;
}
#models .modelsParameter ul li:nth-child(2){
    transition: 1s;
}
#models .modelsParameter ul li:nth-child(3){
    transition: 1.5s;
}
#models .modelsParameter ul li:nth-child(4){
    transition: 2s;
}
#models .modelsParameter ul li:nth-child(5){
    transition: 2.5s;
}
#models .modelsParameter ul li:nth-child(6){
    transition: 3s;
}
#models .modelsParameter .change ul li{
    opacity: 1;
}
/* 竖线 */
#models .modelsParameter ul .shu{ 
    width: 1px;
    height: 70px;
    background-color: #000;
    display: block;
}
#models .modelsParameter ul li:nth-child(1) div div{
    float: left;
}
#models .modelsParameter ul li:nth-child(1) .miao{
    height: 37px;
    overflow: hidden;
}
/* 设置字体大小 */
#models .modelsParameter ul li div,
#models .modelsParameter ul li div i{
    font-size: 25px;
    font-weight: 600;
}
#models .modelsParameter ul li p{
    font-size: 13px;
}
/* 立即订购按钮 */
#models .modelsParameter ul li:last-child button{
    width: 150px;
    height: 40px;
    border-radius: 20px;
    border:2px solid #000;
    margin-top:20px;
    transition: 0.3s;
    font-size: 13px;
}
#models .modelsParameter ul li:last-child button:hover{
    background-color: #000;
    color:#fff;
}
#models .modelsParameter .change .num1{
    margin-top:-74px;
    transition: 0.5s;
}
#models .modelsParameter .change .num2{
    margin-top:-555px;
    transition: 0.7s;
}
/* 进入第一页动画 */
#models .modelsParameter .num1{
    margin-top:0px;
}
#models .modelsParameter .num2{
    margin-top:0px;
}
#models .modelsParameter ul li{
    opacity: 0;
}
</style>