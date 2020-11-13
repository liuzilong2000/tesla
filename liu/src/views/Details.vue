
<template>
    <div id="models">
        <full-page :options="options">
            <!-- -------------------------------第一屏 ---------------------------------->
            <div class="section">
                <my-header ref="myHeader">
                    <slot><img src="/images/logo1.gif" alt=""></slot>
                </my-header>
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
            <!-- -------------------------------第二屏-------------------------------- -->
            <div class="section">
                <div class="box2">
                    <div class="row m-0">
                        <!-- 左边简介 -->
                        <div class='col-3 fletBox'>
                            <Models-right ref="box2ChangeFn">
                                <slot slot="title">安全性</slot>
                                <slot slot="small-title">高强度碰撞保护</slot>
                                <slot slot="center">Model S 基于纯电动车平台打造，拥有高强度的车身结构和位于底盘的坚固电池组，提供极佳的碰撞保护。</slot>
                            </Models-right>
                        </div>
                        <!-- 右边模型 -->
                        <div class='col-9 rightBox m-0 p-0' :class="box2Change">
                            <div class="bgImg">
                                <!-- 前撞保护 -->
                                <div>
                                    <span>前撞保护</span>
                                </div>
                                <!-- 侧撞保护 -->
                                <div>
                                    <span>侧撞保护</span>
                                </div>
                                <!-- 侧翻风险很低 -->
                                <div>
                                    <span>侧翻风险很低</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第三屏-------------------------------- -->
            <div class="section">
                <div class="box3">
                    <div class="box3Change">
                        <!-- 上边 -->
                        <div class="bgImg3">
                            <div :class="box3Change">
                                <!-- 车基础情况 -->
                                <Models-centent ref="box3ChangeFn">
                                    <slot slot="content1Div">全轮驱动</slot>
                                    <slot slot="content1P">双电机全轮驱动实现对牵引力和扭矩的全天候精准控制</slot>

                                    <slot slot="content2Div">
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
                                    </slot>
                                    <slot slot="content2P">同级别车型中出色的加速性能：百公里加速最快只需 2.5 秒</slot>

                                    <slot slot="content3Div">250公里/小时</slot>
                                    <slot slot="content3P">操控性和空气动力学表现极佳，时速可达 250 公里/小时</slot>
                                </Models-centent>
                            </div>
                        </div>
                        <!-- 下边 -->
                        <!-- 车简介 -->
                        <Models-bottom ref="box3ChangeBottom">
                            <slot slot="title">性能</slot>
                            <slot slot="small-title">卓越的加速性能</slot>
                            <slot slot="center">Model S 在性能和安全性方面奠定了行业标准。得益于 Tesla 先进的电动动力总成，以及双电机全轮驱动、自适应空气悬架和卓越的加速性能，Model S 拥有全天候的、出色的总体性能表现，百公里加速最快仅需 2.5 秒。</slot>
                        </Models-bottom>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第四屏-------------------------------- -->
            <div class="section">
                <div class="box4">
                    <div :class="box4Change" class="row m-0">
                        <!-- 左边视频 -->
                        <div class="col-9 m-0 p-0">
                            <video class="" src="/images/MODELS/video/119ZLJ_range.mp4-2000_TSMBHB.mp4" muted="muted"  loop='loop' ref="box4autoplay"></video>
                             <!-- 车基础情况 -->
                                <Models-centent ref="box4ChangeCentent" class="ModelsCentent">
                                    <slot slot="content1Div">719公里</slot>
                                    <slot slot="content1P">单次充电续航里程最高可达 719 公里</slot>

                                    <slot slot="content2Div">15分钟</slot>
                                    <slot slot="content2P">在超级充电站充电 15 分钟，即可补<br>充最多约 276 公里的续航电量</slot>

                                    <slot slot="content3Div">18,000+</slot>
                                    <slot slot="content3P">超级充电站遍布全球热门线路</slot>
                                </Models-centent>
                        </div>
                        <!-- 右边车详情 -->
                        <div class="col-3  m-0 p-0">
                            <Models-right ref="box4ChangeFn">
                                <slot slot="title">续航里程</slot>
                                <slot slot="small-title">不断扩展的充电网络</slot>
                                <slot slot="center">Model S 拥有行业领先的续航里程，以及多种充电方式。不断扩展的 Tesla 充电网络已覆盖全国主要城市和热门线路，让您充电无忧</slot>
                            </Models-right>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第五屏-------------------------------- -->
            <div class="section">
                <div class="box5">
                    <div class="box5Change">
                        <!-- 上边视频 -->
                        <div class="box5Top">
                            <video src="/images/MODELS/video/hero.mp4"  muted="muted"  loop='loop' ref="box5autoplay"></video>
                            <!-- 车基础情况 -->
                            <Models-centent ref="box5ChangeFn" class="box5Models-centent">
                                <slot slot="content1Div">360°</slot>
                                <slot slot="content1P">前置、侧方和车尾摄像头，视野范围达 360 度</slot>

                                <slot slot="content2Div">160m</slot>
                                <slot slot="content2P">前置雷达，探测前方较远距离的障碍物</slot>

                                <slot slot="content3Div"><div class="box5r"><div>12</div> 超声波<br>传感器</div></slot>
                                <slot slot="content3P">探测附近车辆，降低碰撞风险，辅助泊车</slot>
                            </Models-centent>
                        </div>
                        <!-- 下边详情 -->
                        <div class="box5Bottom">
                            <Models-bottom ref="box5ChangeBottom">
                                <slot slot="title">Autopilot 自动辅助驾驶</slot>
                                <slot slot="small-title">未来的驾驶方式</slot>
                                <slot slot="center">Autopilot 自动辅助驾驶旨在提升行车安全性和便利性，帮助车主应对枯燥重复的操作环节，从而更好地享受驾驶乐趣。</slot>
                            </Models-bottom>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第六屏-------------------------------- -->
            <div class="section">
                <div class="box6">
                    <!-- 上边 -->
                    <div class="box6Img">
                        <!-- 车基础情况 -->
                        <Models-centent ref="box6ChangeFn" class="box6Models-centent">
                            <slot slot="content1Div">17英寸</slot>
                            <slot slot="content1P">车载触摸屏，操控一目了然</slot>

                            <slot slot="content2Div"><i class="iconfont wifi">&#xe65f;</i></slot>
                            <slot slot="content2P">OTA 空中软件更新，不断引入新功能并提升性能</slot>

                            <slot slot="content3Div">804升</slot>
                            <slot slot="content3P">超大载物空间，堪比 SUV 车型</slot>
                        </Models-centent>
                    </div>
                    <!-- 下边 -->
                    <div>
                        <Models-bottom ref="box6ChangeBottom">
                            <slot slot="title">内饰</slot>
                            <slot slot="small-title">以驾驶员为中心进行设计</slot>
                            <slot slot="center">Model S 内部空间宽敞，最多容纳五名成人，还配有 17 英寸车载触摸屏。先进的降噪工程技术实现了媲美录音室的音响效果。全景玻璃车顶让所有乘客的视野更开阔，体验更佳</slot>
                        </Models-bottom>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第七屏-------------------------------- -->
            <div class="section">
                <div class="box7">
                    <!-- 上边 -->
                    <div class="box7Img">
                        <!-- 车基础情况 -->
                        <div>
                            <Models-centent ref="box7ChangeFn" class="box6Models-centent">
                                <slot slot="content1Div"><div><img class="img1" src="/images/MODELS/signature-colors.png" alt=""> 定制车漆颜色</div></slot>
                                <slot slot="content1P">定制你的 Model S，多种车漆颜色供选择</slot>

                                <slot slot="content2Div"><div>0.23<img class="img2" src="/images/MODELS/cd_2.png" alt=""></div></slot>
                                <slot slot="content2P">Model S 的空气动力学表现十分出色，风阻系数极低</slot>

                                <slot slot="content3Div"><img class="img3" src="/images/MODELS/MS_roof.png" alt="">适配车顶行李架</slot>
                                <slot slot="content3P">标配全景玻璃车顶，有效阻隔紫外线，头部空间更充裕</slot>
                            </Models-centent>
                        </div>
                        
                        <!-- 下边 -->
                        <div>
                            <Models-bottom ref="box7ChangeBottom">
                                <slot slot="title">外观</slot>
                                <slot slot="small-title">设计以效率为先</slot>
                                <slot slot="center">Model S 的外观设计追求速度与耐用性，实现了出色的空气动力学表现和卓越的加速性能，同时兼顾设计美学。车门把手会在人员靠近时自动弹出，车门关闭后自动缩回。</slot>
                            </Models-bottom>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第八屏-------------------------------- -->
            <div class="section">
                <div class="box8 row m-0">
                    <!-- 左边图片 -->
                    <div class="col-6 m-0 p-0" :class="box8Change">
                        <img src="/images/MODELS/MS-specs-desktop.jpg" alt="">
                    </div>
                    <!-- 右边简介 -->
                    <div class="col-6 m-0 p-0" :class="box8Change">
                        <table>
                            <tr>
                                <td><h3>Model S 规格</h3></td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <button @click='box8Btn(1)' :style='box8Btn1'>Performance 高性能版</button>
                                </td>
                                <td>
                                    <button @click='box8Btn(2)' :style='box8Btn2'>长续航升级版</button>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>电池</p>
                                    <p>长续航电池</p>
                                </td>
                                <td>
                                    <p>重量</p>
                                    <p>2,242 kg</p>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>加速</p>
                                    <p>2.5 秒 0-100 公里/小时</p>
                                </td>
                                <td>
                                    <p>储物空间</p>
                                    <p>804 升</p>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>续航里程</p>
                                    <p>694 公里</p>
                                </td>
                                <td>
                                    <p>显示屏</p>
                                    <p>仪表盘 + 17 英寸触摸屏</p>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>驱动</p>
                                    <p>全轮驱动</p>
                                </td>
                                <td>
                                    <p>超级充电功率和费用</p>
                                    <p>峰值功率 250 kW；按使用付费</p>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>座位数</p>
                                    <p>5 个座位</p>
                                </td>
                                <td rowspan="2">
                                    <p>质量保证</p>
                                    <p>整车质保：4 年或 8 万公里（先到者为准）</p>
                                    <p>电池和驱动单元：8 年或 240,000 公里（先到者为准）</p>
                                </td>
                            </tr>
                            <!-- -- -->
                            <tr>
                                <td>
                                    <p>轮毂</p>
                                    <p>19 英寸或 21 英寸</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <!-- -------------------------------第九屏-------------------------------- -->
            <div class="section">
                <div class="box9 row m-0">
                    <div class="col-4 m-0 p-0 box9Left">
                        <div>
                            <h4>订购 Model S</h4>
                            <button>立即订购</button>
                        </div>
                    </div>
                    <div class="col-8 m-0 p-0 box9Right">
                        <div>
                            <img src="/images/MODELS/models@2.jpg" alt="">
                        </div>
                    </div>
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
            change:{change:false},          //第一屏进入动画
            box2Change:{box2Change:false},  //第二屏进入动画
            box3Change:{box3Change:false},  //第三屏进入动画
            box4Change:{box4Change:false},  //第四屏进入动画
            box8Change:{box8Change:false},  //第八屏进入动画
            autoplay:'',

            // 第八屏按钮
            box8Btn1:'border-color:#fff',
            box8Btn2:'',

        }
    },
    methods:{
        afterLoad(anchors,item){
            setTimeout(()=>{
                //===============第一屏=================
                if(item.index == 0){  
                    this.change.change = true;
                }else{
                    this.change.change = false;
                    if(this.$refs.myHeader.show){
                        this.$refs.myHeader.handel()
                    }
                }
                // ==============第二屏==================
                if(item.index == 1){   
                    this.box2Change.box2Change = true;
                    // 左边简介组件  进入
                    this.$refs.box2ChangeFn.changeRight(true)
                }else{
                    this.box2Change.box2Change = false;
                    // 左边简介组件  移出
                    this.$refs.box2ChangeFn.changeRight(false)
                }
                // ===============第三屏======================
                if(item.index == 2){   
                    this.box3Change.box3Change = true;
                    // 上边简介组件  进入
                    this.$refs.box3ChangeFn.models_cententChange(true,true)
                    // 下边简介组件  进入
                    this.$refs.box3ChangeBottom.changeBottom(true);
                }else{
                    this.box3Change.box3Change = false;
                    // 上边简介组件  移出
                    this.$refs.box3ChangeFn.models_cententChange(false,true)
                    // 下边简介组件  移出
                    this.$refs.box3ChangeBottom.changeBottom(false)
                }
                // ===================第四屏===========================
                if(item.index == 3){   
                    // 左边简介组件  进入
                    this.$refs.box4ChangeCentent.models_cententChange(true,true)
                    // 右边简介组件  进入
                    this.$refs.box4ChangeFn.changeRight(true)
                }else{
                    // 左边简介组件  移出
                    this.$refs.box4ChangeCentent.models_cententChange(false,true)
                    // 右边简介组件  移出
                    this.$refs.box4ChangeFn.changeRight(false)
                }
                // ==================第五屏==========================
                if(item.index == 4){   
                    // 上边简介组件  进入
                    this.$refs.box5ChangeFn.models_cententChange(true,false)
                    // 下边简介组件  进入
                    this.$refs.box5ChangeBottom.changeBottom(true)
                }else{
                    // 上边简介组件  移出
                    this.$refs.box5ChangeFn.models_cententChange(false,false)
                    // 下边简介组件  移出
                    this.$refs.box5ChangeBottom.changeBottom(false)
                }
                // =================第六屏=============================
                if(item.index == 5){   
                    // 上边简介组件  进入
                    this.$refs.box6ChangeFn.models_cententChange(true,false)
                    // 下边简介组件  进入
                    this.$refs.box6ChangeBottom.changeBottom(true)
                }else{
                    // 上边简介组件  移出
                    this.$refs.box6ChangeFn.models_cententChange(false,false)
                    // 下边简介组件  移出
                    this.$refs.box6ChangeBottom.changeBottom(false)
                }
                // =================第七屏=============================
                if(item.index == 6){   
                    // 上边简介组件  进入
                    this.$refs.box7ChangeFn.models_cententChange(true,true)
                    // 下边简介组件  进入
                    this.$refs.box7ChangeBottom.changeBottom(true)
                }else{
                    // 上边简介组件  移出
                    this.$refs.box7ChangeFn.models_cententChange(false,true)
                    // 下边简介组件  移出
                    this.$refs.box7ChangeBottom.changeBottom(false)
                }
                // =================第八屏=============================
               if(item.index == 7){   
                    this.box8Change.box8Change = true;
                }else{
                    this.box8Change.box8Change = false;
                }
            },500)
            // 第四屏 视频
            if(item.index == 3){   
                // 自动播放
                this.$refs.box4autoplay.play();
            }else{
                // 回到初始
                this.$refs.box4autoplay.currentTime=0
            }
             // 第五屏 视频
            if(item.index == 4){   
                // 自动播放
                this.$refs.box5autoplay.play();
            }else{
                // 回到初始
                this.$refs.box5autoplay.currentTime=0
            }
        },
        box8Btn(num){
            if(num == 1){
                this.box8Btn1 = 'border-color:#fff';
                this.box8Btn2 = 'border-color:rgb(121, 120, 120)';
            }else if(num == 2){
                this.box8Btn1 = 'border-color:rgb(121, 120, 120)';
                this.box8Btn2 = 'border-color:#fff';
            }
        }
    }
}
</script>
 
<style>
#headerNav	.h_middle li a,
#headerNav  .h_right a{
    color: #fff;
}
#navbar .inner-header .inner-header-icon div{
    background-color: #fff;
}
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
/* 当滑动到第一页所触发的动画 */
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
    transition: 1s 0.1s;
}
#models .modelsParameter ul li:nth-child(3){
    transition: 1.5s 0.1s;
}
#models .modelsParameter ul li:nth-child(4){
    transition: 2s 0.3s;
}
#models .modelsParameter ul li:nth-child(5){
    transition: 2.5s 0.3s;
}
#models .modelsParameter ul li:nth-child(6){
    transition: 3s 0.5s;
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
    border:3px solid #000;
    margin-top:20px;
    transition: 0.3s;
    font-size: 13px;
    background-color: transparent;
}
#models .modelsParameter ul li:last-child button:hover{
    background-color: #000;
    color:#fff;
}
#models .modelsParameter .change .num1{
    --tcl-integral-as-percent: -20%;
    transition: 1.5s ease-in-out;
}
#models .modelsParameter .change .num2{
    --tcl-integral-as-percent: -75%;
    transition: 1.7s ease-in-out;
}
/* 进入第一页动画 */
#models .modelsParameter .num1,
#models .modelsParameter .num2{
    transform: translateY(var(--tcl-integral-as-percent)) translateZ(0);
}
#models .modelsParameter ul li{
    opacity: 0;
}

/* ---------------------第二页---------------- */
#models .box2,
#models .box2 > div,
#models .box2 .rightBox{
    width: 100%;
    height: 100%;
}
/* 右边背景图 */
#models .box2 .rightBox .bgImg{
    width: 100%;
    height: 100%;
    background: url('/images/MODELS/safety-model-s-hero.png') no-repeat center;
    background-size:97%;
    background-color: rgb(235, 232, 232);
}
/* 线 */
#models .box2 .rightBox .bgImg div{
    position: absolute;
    /* width: 300px; */
    border-left: 3px solid transparent;
    transition: 1s;
}
/* 右边进入后样式 线 */
#models .box2 .box2Change .bgImg div{
    border-left: 3px solid #000;
}
/* 前装保护 */
#models .box2 .rightBox .bgImg div:first-child{
    height: 0;
    top:22%;
    left:25%;
}
/* 进入    前装保护 */
#models .box2 .box2Change .bgImg div:first-child{
    height: 250px;
}
/* 侧撞保护 */
#models .box2 .rightBox .bgImg div:nth-child(2){
    height: 0px;
    top:15%;
    left:46%;
}
/* 进入    侧撞保护 */
#models .box2 .box2Change .bgImg div:nth-child(2){
    height: 150px;
}
/* 侧翻风险很低 */
#models .box2 .rightBox .bgImg div:nth-child(3){
    height:0px;
    top:61%;
    left:50%;
}
/* 进入     侧翻风险很低 */
#models .box2 .box2Change .bgImg div:nth-child(3){
    height: 130px;
}
#models .box2 .rightBox .bgImg div:nth-child(3) span::after{
    top: -7px;
    left:-5px;
}
#models .box2 .rightBox .bgImg div:nth-child(3) span{
    margin:120px 0 0 10px;
}
/* 文字 */
#models .box2 .rightBox .bgImg div span{
    margin: -10px 0 0 10px;
    display: block;
    opacity: 0;
}
/*进入  文字 */
#models .box2 .box2Change .bgImg div span{
    opacity: 1;
}
/* 圆点 */
#models .box2 .rightBox .bgImg div span::after{
    content: '';
    width: 7px;
    height: 7px;
    border: 2px solid #000;
    border-radius: 50%;
    background-color: #fff;
    display: block;
    position: absolute;
    bottom: -7px;
    left:-5px;
}
/* --------------------------第三屏---------------------- */
#models .box3{
    height: 100%;
}
#models .box3 > div{
    display: flex;
    flex-direction:column;
    height: 100%;
}
#models .box3 >div .bgImg3{
    flex:2;
    background-color: #000;
    width: 100%;
    height: 100%;
    background: url('/images/MODELS/model-s-performance.jpg') no-repeat center;
    background-size:cover;
    position: relative;
}
#models .box3 >div div:last-child{
    flex:1;
}
/* 上边 */
/* 车基础情况 */
#models .bgImg3{
    width: 100%;
}

/* 当滑动到第三页所触发的动画 */
#models .bgImg3 ul li:nth-child(3) .miao{
    height: 37px;
    overflow: hidden;
}
#models .bgImg3 ul li:nth-child(3) .miao div{
    float: left;
}
/* 设置字体大小 */
#models .bgImg3 .box3Change .num1{
    --tcl-integral-as-percent: -20%;
    transition: 1.5s ease-in-out;
}
#models .bgImg3 .box3Change .num2{
    --tcl-integral-as-percent: -75%;
    transition: 1.7s ease-in-out;
}
/* 进入第三页动画 */
#models .bgImg3 .num1,
#models .bgImg3 .num2{
    transform: translateY(var(--tcl-integral-as-percent)) translateZ(0);
}
/* box3Introduction box3Change*/


/* -------------------------------第四屏------------------------------- */
#models .box4,
#models .box4 >div,
#models .box4 >div>div:first-child{
    width: 100%;
    height: 100%;
}
#models .box4 >div>div:first-child video{
    width: 100%;
    height: 100%;
    object-fit: fill;
}
#models .box4 .ModelsCentent{
    position: absolute;
    bottom:20px;
}
/* -------------------------------第五屏------------------------------- */
#models .box5{
    height: 100%;
    width: 100%;
}
#models .box5 > div{
    display: flex;
    flex-direction:column;
    height: 100%;
    width: 100%;
    overflow: hidden;
    position: relative;
}
#models .box5 >div > div:first-child{
    flex:2;
    width: 100%;
    height: 100%;
    margin-top:-147px;
}
#models .box5 >div div:first-child video{
    width: 100%;
    height: 100%;
    object-fit: fill;
}
/* 上边 */
#models .box5 .box5Models-centent{
    position: absolute;
    top:60%;
    left:10%;
}
#models .box5 .box5Models-centent li{
    color:#000;
}
#models .box5 .box5Models-centent .shu{ 
    background-color: #000;
}
#models .box5 .box5r{
    font-size: 13px;
    font-weight: 400;
    margin-bottom: 15px;
}
#models .box5 .box5r > div{
    width: 40px;
    height: 40px;
    border:1px solid #000;
    border-radius: 50%;
    text-align: center;
    line-height: 40px;
    font-weight: 900;
    float: left;
    margin:0 10px 0px 0;
}
/* 下边 */
#models .box5 .box5Bottom{
    flex: 1;
    margin-top:-147px;
    background-color: #fff;
    position: relative;
}
/* -------------------------------第六屏------------------------------- */
#models .box6{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
}
#models .box6 .box6Img{
    flex:2;
    width: 100%;
    height: 100%;
    background: url('/images/MODELS/hero@2_1.jpg') no-repeat center;
    background-size:cover;
    position: relative;
}
#models .box6 >div:last-child{
    flex:1;
}
#models .box6 .box6Models-centent{
    position: absolute;
    top:90%;
    left:75%;
}
#models .box6 .wifi{
    font-size: 35px;
}
/* -------------------------------第七屏------------------------------- */
#models .box7{
    width: 100%;
    height: 100%;
}
/* 背景图片 */
#models .box7 > div{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    background: url('/images/MODELS/hero-high-viewport.jpg') no-repeat center;
    background-size:cover;
}
/* 重置组件样式 */
#models .box7 .box7Img ul{
    top:50px;
}
#models .box7 .box7Img ul div{
    font-size: 13px;
    font-weight: 500;
}
#models .box7 .box7Img ul .shu{
    background-color: #000;
}
#models .box7 .box7Img li:nth-child(3) div{
    font-size: 27px;
}
#models .box7 .box7Img li{
    color:#000;
}
#models .box7 .box7Img > div:first-child{
    flex:2;
    width: 100%;
    height: 100%;
    position: relative;
}
#models .box7 .box7Img >div:last-child{
    flex:1;
}
/* 设置图标 */
#models .box7 .box7Img .img1{
    width: 40px;
    height: 40px;
}
#models .box7 .box7Img .img2{
    margin-top:-10px;
}
#models .box7 .box7Img .img3{
    width: 65px;
    height: 39px;
    margin-right:10px;
}
/* -------------------------------第八屏------------------------------- */
#models .box8{
    height: 100%;
    background-color: #000;
}
/* 图片 */
#models .box8 img{
    position: absolute;
    top:50%;
    transform: translate(0,-50%);
    transition: 0.5s;
    opacity: 0;
}
#models .box8 .box8Change img{
    opacity: 1;
}
/* 右边表格 */
#models .box8 table{
    color:#fff;
    margin-top:50px;
    opacity: 0;
    transition: 0.5s 0.5s;
}
#models .box8 .box8Change table{
    margin-top:30px;
    opacity: 1;
}
/* 按钮 */
#models .box8 table button{
    width: 190px;
    height: 40px;
    border-radius: 20px;
    color:#fff;
    border:3px solid rgb(121, 120, 120);
    transition: 0.3s;
    font-size: 13px;
    background-color: transparent;
}
#models .box8 table tr td{
    width: 210px;
    padding:10px 0;
    vertical-align: top;
}
#models .box8 table tr td::before{
    content: '';
    width: 30px;
    height: 1px;
    display: block;
    background-color: rgb(167, 165, 165);
    margin:15px 0 10px 0;
}
#models .box8 table tr:first-child td::before,
#models .box8 table tr:nth-child(2) td::before{
    content: '';
    width: 0px;
    height: 0px;
}
/* -------------------------------第九屏------------------------------- */
#models .box9{
    height: 100%;
}
#models .box9 .box9Left >div{
    position: absolute;
    top:50%;
    right:10px;
    transform: translate(0,-50%);
}
#models .box9 .box9Right >div{
    position: absolute;
    top:50%;
    left:10px;
    transform: translate(0,-50%);
}
</style>