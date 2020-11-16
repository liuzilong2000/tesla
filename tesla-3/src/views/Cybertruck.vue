<template>
    <div id="cybertruck">
        <NavTotop>
            <slot slot="img"><img src="/images/logo1.gif" alt=""></slot>
            <slot slot="btn">
                <div class="dgou">
                    <p class="box">
                    <span class="lamp">立即订购</span>
                    </p>
                </div>
              </slot>
        </NavTotop>
        <!--第一页 -->
        <div class="cybertruck_one">
            <div class="propaganda">
              <span class="txt">比卡车更实用&nbsp;&nbsp;比跑车更性能</span>
              <div class="dgou">
                    <p class="box">
                    <span class="lamp">立即订购</span>
                </p>
              </div>
              <div class="gui">
                    <img src="/images/gui.png" alt="">
                </div>
            </div>
        </div>
        <!-- 第二页 -->
        <div class="cybertruck_two">
            <div class='decline' :class='y>133?rise:""'>
                <img src="/images/02_Desktop.jpg" alt="">
            </div>
            <div class="introduce_1 decline" :class='y>833?rise:""'>
                <h4>超强外骨骼结构</h4>
                <p>Cybertruck 的车身外壳具有极高的耐用性和乘客保护能力。从几乎不可穿透的外骨骼结构开始，该车型的每个组件都拥有超高的强度和耐用性，从超硬30倍冷轧不锈钢结构车身表面，到特斯拉装甲玻璃，该车型的每个组件都拥有卓越的强度和耐用性。</p>
            </div>
        </div>
        <!-- 第三页 -->
        <div class="cybertruck_three">
            <div class="decline" :class='y>1001?rise:""'>
                <img src="/images/03_Desktop.jpg" alt="">
            </div>
            <div class="introduce_2 decline" :class='y>1663?rise:""'>
                <p class="left">超硬30倍冷轧不锈钢</p>
                <p class="right">这是我们用过的最好车身材料。光滑的单色车身骨架外敷超硬外壳，有助于凹痕、损坏和长期腐蚀的消除，且能为驾乘者提供最大的安全保护。</p>
            </div>
        </div>
        <!-- 第四页 -->
        <div class="cybertruck_four">
            <div class="decline" :class='y>2000?rise:""'>
                <img src="/images/04_Desktop.jpg" alt="">
            </div>
            <div class="introduce_3 decline" :class='y>2600?rise:""'>
                <p class="left">特斯拉装甲玻璃</p>
                <p class="right">超强玻璃和聚合物层状复合材料可以吸收并对冲击力重新定向，从而提高性能和耐受力。</p>
            </div>
        </div>
        <!-- 第五页 -->
    <div id="carouselExampleIndicators" class="carousel slide cybertruck_five" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>                
            </ol>
        <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/images/Rotation/05_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <h2>多功能性</h2>
                <p>Cybertruck拥有高达3,500磅的有效负载能力和可调节空气悬架，是我们有史以来最强大的产品，其外部存储空间达100立方英尺且可以上锁-包括非常坚固足以站立的后部车盖。</p>    
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/Rotation/06_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <!-- <h2>多功能性</h2> -->
                <p>像移动仓库一样的存储空间</p>
                <p>Cybertuck可存放工具箱、轮胎和Cyberquad，以及更多物品。外部可上锁的存储空间高达100立方英尺，包括底部隐藏式储物格，后备箱和帆柱区。</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/Rotation/07_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <!-- <h2>多功能性</h2> -->
                <p>坚固的强度</p>
                <p>Cybertruck 具有强大的拉力和高达14,000磅的牵引能力，可轻松应对大部分牵引场景。</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/Rotation/08_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <!-- <h2>多功能性</h2> -->
                <p>自适应空气悬架</p>
                <p>沿任一方向将悬架提升和降低四英寸，以方便进入Cybertruck或存储箱，同时自动调平功能可适应任何场合并为每项工作提供帮助。</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/Rotation/09_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <!-- <h2>多功能性</h2> -->
                <p>灵活的内饰</p>
                <p>可舒适地容纳6人，第二排座椅下还有额外的存储空间。配有先进的17英寸触摸屏和全新的自定义用户界面。</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/Rotation/10_Desktop.jpg" class="d-block w-100" alt="">
            <div class="performance">
                <!-- <h2>多功能性</h2> -->
                <p>出色的适应性</p>
                <p>从坚固到精致，Cybertruck可以全面满足您的需求。多功能的实用设计为各种体验做好了准备-包括车载电源和压缩空气。</p>
            </div>
        </div>
    </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <!-- <span class="sr-only"></span> -->
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <!-- <span class="sr-only">Next</span> -->
        </a>
        </div>
        <!-- 第六页 -->
        <div class="cybertruck_six">
            <video muted='true' autoplay='true' loop="true">
                <source src="/images/performance_video_desktop.mp4" > 
            </video>
            <div class=" xiaolv decline"  :class='y>4580?rise:""'      >
                <h3>性能与效率</h3>
                <span>现在我们正进入一种全新的强度、速度和多功能级别，这只有纯电设计才有可能实现。强大的动力传动系统和低重心提供了非凡的牵引力控制和扭矩，0至60英里/小时加速只需短短2.9秒以及续航里程高达500英里.</span>
            </div>
        </div>
        <!-- 第七页 -->
        <div class="cybertruck_seven">
            <div class="Specifications_right">
                <img src="/images/12_Desktop.png" alt="">
            </div>
            <div class="Specifications_left">
                <h3>规格*</h3>
                <span>
                    <input type="radio" name="1" class="checkbox_style" checked="checked">单电机后轮驱动
                    <label for="checkbox_meihua"></label>
                </span>
                <span>
                    <input type="radio" name="1" class="checkbox_style" >双电机全轮驱动
                    <label for="checkbox_meihua"></label>                                        
                </span>
                <span>
                    <input type="radio" name="1" class="checkbox_style" >三电机全轮驱动                                        
                    <label for="checkbox_meihua"></label>                    
                </span>
                <ul>
                    <li>
                        <div>
                            <span>0-60 英里/小时</span>
                            <span class='right_x'>&lt;6.5秒</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>里程</span>
                            <span class='right_x'>250+ 英里（EPA 预估）</span>
                        </div>
                    </li>      
                    <li>
                        <div>
                            <span>动力系统</span>
                            <span class='right_x'>后轮驱动</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>储存容量</span>
                            <span class='right_x'>100 立方英尺</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>货箱长度</span>
                            <span class='right_x'>6.5英尺</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>牵引力</span>
                            <span class='right_x'>7,500+ 磅</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>AUTOPILOT 自动辅助驾驶</span>
                            <span class='right_x'>标配</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>自适应空气悬架</span>
                            <span class='right_x'>标配</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>离地间隙</span>
                            <span class='right_x'>高达16英寸</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>接近角度</span>
                            <span class='right_x'>35度</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>离去角度</span>
                            <span class='right_x'>28度</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <span>*所有配置仅限美国规格。全球规格将根据需求日后制定</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 尾页 -->
        <div class="cybertruck_bot">
            <div class="english">
                <h3>CYBERTRUCK</h3>
                <p class="box_1">
                    <span class="lamp_1">立即订购</span>
                </p>
            </div>
            <div class="bot_image">
                <img src="/images/13_Desktop_Order.png" alt="">
            </div>
        </div>
    </div>
</template>


<style>
    #app{
        height: 100%;
    }
    #cybertruck{
        width: 100%;
        height: 100%;
    }
    /* 第一页 */
    #cybertruck .cybertruck_one{
        width:100%;
        height:800px;
        background: url('/images/cybertruck1.jpg') no-repeat center;
        background-size: cover;
        -webkit-background-size: cover;
        -o-background-size: cover;
        background-position: center 0;
    }
    #cybertruck .propaganda{
         text-align: center;
         color: #fff;
         text-shadow:0rem 0rem .5rem #fff;
         padding-top:660px; 
    }
    #cybertruck .propaganda .gui{
        margin-top:-640px;
    }
    #cybertruck .propaganda .txt{
        margin-left:5px;
        letter-spacing:5px;
        font-size: 14px;
    }
    #cybertruck .propaganda .dgou{
        margin-top: -50px;
    }
    #cybertruck .propaganda .box{
        width: 208px;
        height: 40px;
        margin:0 auto;
        margin-top:72px;
        position: relative;
        border:2.5px solid transparent;
        border-color: #fff;
        text-align: center;
        line-height: 40px;
    }
    #cybertruck .propaganda .box:hover{
        animation: pulsate 0.5s forwards;
    }
    @keyframes pulsate{
        0% {
		border-color: gray;
        background: transparent;
	}
	10% {
		border-color:#fff;
        background: transparent;
	}
	20% {
        border-color: gray;
        background: transparent;
	}
    30% {
        border-color: #fff;
        background: transparent;
    }
    40% {
        border-color: gray;
        background: transparent;
    }
    50% {
        border-color: #fff;
        background: transparent;
    }
    60% {
        border-color: gray;
        background: transparent;
    }
    70% {
        border-color: #fff;
        background: transparent;
    }
    80% {
        border-color: gray;
        background: transparent;
    }
    90% {
        border-color: #fff;
        background: transparent;
    }
    100% {
        border-color:#fff;
        background: #fff;
        color: #000;
    }
    }
    
    /* 第二页 */
    #cybertruck .banner{
        width: 100%;
        background: #000;
    }
    #cybertruck .banner img{
        width:200px;
    }
    #cybertruck .cybertruck_two{
        width: 100%;
        height: 100%;
        background:black;
        padding: 5%;
    }
    /* 图片 */
    
    #cybertruck .cybertruck_two img{
        display: block;
        margin: 0 auto;
    }
    /* 介绍 */
    #cybertruck .cybertruck_two .introduce_1 {
        width: 60%;
        color: #fff;
        margin: 0 auto;
    }
    #cybertruck .cybertruck_two .introduce_1 h4{
        text-shadow:0rem 0rem .1rem #fff;
        letter-spacing:3px;
    }
    #cybertruck .cybertruck_two .introduce_1 p{
        margin-top:20px;
    }
    
    /* 第三页 */
    #cybertruck .cybertruck_three{
        width: 100%;
        height: 100%;
        background:black;
        padding: 5%;
    }
    #cybertruck .cybertruck_three img{
        display: block;
        margin: 0 auto;
    }
    #cybertruck .cybertruck_three .introduce_2{
        width: 100%;
        padding: 0% 6% 0% 6%;        
    }
    #cybertruck .cybertruck_three .left {
        display: inline-block;
        color: #fff;
    }
    #cybertruck .cybertruck_three .right {
        color: #fff;
        width: 70%;
        float: right;
    }
   
    /* 第四页 */
    #cybertruck .cybertruck_four{
        width: 100%;
        height: 100%;
        background:black;
        padding: 5%;
    }
    #cybertruck .cybertruck_four img{
        display: block;
        margin: 0 auto;
    }
    #cybertruck .cybertruck_four .introduce_3{
        width: 100%;
        padding: 0% 6% 0% 6%;
    }
    #cybertruck .cybertruck_four .left {
        display: inline;
        color: #fff;
        text-align: left;
        padding: 12px;
    }
    #cybertruck .cybertruck_four .right {
        color: #fff;
        width: 60%;
        float: right;
    }
    
    /* 第五页---------------------轮播 */
    #cybertruck .cybertruck_five {
        background: #000;
        padding: 10%;
    }
    #cybertruck .cybertruck_five .carousel-indicators{
        /* margin-right: -55%;  */
    }
    #cybertruck .cybertruck_five .carousel-indicators li{
        width: 10px;
        height: 10px;
        border:2px solid #fff;
    }
    #cybertruck .cybertruck_five .carousel-inner .performance{
        color: #fff;
        padding-top:20px; 
    }
    #cybertruck .cybertruck_five .carousel-inner .performance h2{
        text-shadow:0rem 0rem .2rem #fff;
    }
    #cybertruck .cybertruck_five .carousel-control-prev-icon{
        display: inline-block;
        width: 10%;
        height: 10%;
        /* border:2px solid #fff; */
        background-color:#000;
    }
    #cybertruck .cybertruck_five .carousel-control-next-icon{
        display: inline-block;
        width: 10%;
        height: 10%;
        background-color:#000;
    }
    /* 第六页 */
    #cybertruck .cybertruck_six{
        width: 100%;
        height:100%;
        background:#000;
        padding: 5%;
    }
    #cybertruck .cybertruck_six video{
        width: 100%;
        text-align: center;
    }

    #cybertruck .cybertruck_six h3{
        color: #fff;
         text-shadow:0rem 0rem .2rem #fff;
         text-align: left;
    }
    #cybertruck .cybertruck_six .xiaolv{
        margin-top: 150px;
    }
    #cybertruck .cybertruck_six span{
        color: #fff;
    }
    /* 第七页 */
    #cybertruck .cybertruck_seven{
        width: 100%;
        height: 100%;
        color: #fff;
        background: #000;
        padding: 10%;
    }
    #cybertruck .cybertruck_seven .Specifications_right{
        width: 60%;
        height: 100%;
        float: right;
    }
    #cybertruck .cybertruck_seven .Specifications_left{
        width: 40%;
        height: 50%;
    }
    #cybertruck .cybertruck_seven .Specifications_left h3{
        text-shadow:0rem 0rem .2rem #fff;        
    }
    #cybertruck .cybertruck_seven .Specifications_left input{
       margin:10px 5px;
    }
    #cybertruck .cybertruck_seven .Specifications_left ul li{
        width:100%;
        padding: 20px 0px;
        border-bottom: 1px solid  gray;
    }
    #cybertruck .cybertruck_seven .Specifications_left ul li div .right_x{
        float:right;
        padding: 0px -50px
    }
    #cybertruck .cybertruck_bot{
        width: 100%;
        height:600px;
        background:#000;
        display: flex;
    }
    #cybertruck .cybertruck_bot .english{
        flex:1;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    #cybertruck .cybertruck_bot .english h3{
        text-align: center;
        color: #fff;
        text-shadow: 0rem 0rem .2rem #fff;
        
    }
    #cybertruck .cybertruck_bot .bot_image{
        flex: 2;
        width: 100%;
        height: 100%;
    }
    #cybertruck .english .box_1{
        width: 208px;
        height: 40px;
        margin:0 auto;
        margin-top:72px;
        position: relative;
        border:2.5px solid transparent;
        border-color: #fff;
        color: #fff;
        line-height: 40px;
        text-align: center;
        
    }
    #cybertruck .english .box_1:hover{
        animation: pulsate .5s forwards;
    }
    @keyframes pulsate{
        0% {
		border-color: gray;
        background: transparent;
	}
	10% {
		border-color:#fff;
        background: transparent;
	}
	20% {
        border-color: gray;
        background: transparent;
	}
    30% {
        border-color: #fff;
        background: transparent;
    }
    40% {
        border-color: gray;
        background: transparent;
    }
    50% {
        border-color: #fff;
        background: transparent;
    }
    60% {
        border-color: gray;
        background: transparent;
    }
    70% {
        border-color: #fff;
        background: transparent;
    }
    80% {
        border-color: gray;
        background: transparent;
    }
    90% {
        border-color: #fff;
        background: transparent;
    }
    100% {
        border-color:#fff;
        background: #fff;
        color: #000;
        font-weight: bold;
    }
    }
    #cybertruck .decline{
        margin-top:180px !important;
        opacity: 0;
        transition: 1s;
    }
    #cybertruck .rise{
        margin-top: 30px !important;
        opacity: 1;
    } 

</style>

<script>
export default {
    data(){
        return {
            y:"",
            rise:{rise:true},
        }
    },
    methods:{
    },
    mounted(){
        window.onscroll = ()=>{
	        if (window.pageXOffset){//查看有无pageXOffset属性：IE9以及IE9以上的浏览器
	            this.y = window.pageYOffset;
	        }else if (document.compatMode ==  "BackCompat"){//混杂（怪异）模式下浏览器
	           this.y = document.body.scrollTop;
	        }else {//标准模式下浏览器
	            this.y = document.documentElement.scrollTop;
	        }
            console.log(this.y)
        }
    }
}
</script>

