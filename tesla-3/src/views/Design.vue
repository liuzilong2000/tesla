<template>
    <div id="design">
        <!-- 头部 -->
        <header>
            <div class="d_left">
                <a href="/"><img src="/images/carType/logo.svg" alt="" width="100" height="13"></a>
            </div>
            <div class="d_nav_center">
                <ul>
                    <li :class="i==num?ok:''" v-for="(index,i) of DtitleArr" :key="i" @click="navBtn(i)">{{index}}</li>
                </ul>
            </div>
            <div class="d_right">
                CN
            </div>
        </header>
        <!-- 身子 -->

        <!-- ################################1.车型################################ -->
        <section v-if="num == 0">
            <!-- 左页面 -->
            <article class="s_left">
                <div class="s_l_top">
                    <i class="iconfont">&#xe719;</i>
                    <span>Model S 享受新能源汽车购置税减免政策，最高节省约8.6万</span>
                </div>
                <div class="s_l_bottom">
                    <div>
                        <img :src="s_img[num1]" alt="">
                        <!-- <img v-if="num1==0" :src="s_img1" alt="">
                        <img v-else-if="num1==2" :src="s_img2" alt="">
                        <img v-else-if="num1==1" :src="s_img3" alt=""> -->
                        <Models-centent class="s_l_M">
                            <slot slot="content1Div">480 公里</slot>
                            <slot slot="content1P">续航里程 (WLTP 预估)</slot>
                            <slot slot="content2Div">241 km/h</slot>
                            <slot slot="content2P">最高时速</slot>
                            <slot slot="content3Div">3.7 秒</slot>
                            <slot slot="content3P">0-100 公里/小时 加速</slot>
                        </Models-centent>
                    </div>
                    
                </div>
            </article>
            <!-- 右页面 -->
            <article class="s_right">
                <div class="s_r_content">
                    <span>中国制造 车型选择</span>
                </div>
                <div class="s_r_content_1">
                    <div>
                        <span>后轮驱动</span>
                    </div>
                    <div>
                        <span class="s_r_c1">升级版内饰套件</span>
                    </div>
                    <div :class="0==isbor?s_r_bor:''" class="s_r_c2" @click="borBtn">
                        <p>标准续航升级版</p>
                        <p>¥ 249,900</p>
                    </div>
                    <div>
                        <span class="s_r_c1">高级版内饰套件</span>
                    </div>
                    <div :class="1==isbor?s_r_bor:''" class="s_r_c2" @click="borBtn1">
                        <p>标准续航升级版</p>
                        <p>¥ 309,900</p>
                    </div>
                    <div>
                        <span>双电机全轮驱动</span>
                    </div>
                    <div>
                        <span class="s_r_c1">高级版内饰套件</span>
                    </div>
                    <div :class="2==isbor?s_r_bor:''" class="s_r_c2" @click="borBtn2">
                        <p>Performance 高性能版</p>
                        <p>¥ 309,900</p>
                    </div>
                </div>
                <div class="s_r_content_2">
                    <div>
                        <p>*待监管机构批准。</p>
                        <p>包含竞速套件</p>
                    </div>
                    
                    <ul>
                        <li>19 英寸动力运动轮毂</li>
                        <li>高级制动装置</li>
                        <li>碳纤维扰流板</li>
                        <li>悬架更低</li>
                        <li>铝合金踏板</li>
                        <li>最高时速可达 261 公里每小时</li>
                        <li>赛道模式</li>
                    </ul>
                </div>
            </article> 
        </section>
        <!-- ################################2.外观##################################### -->
        <section v-else-if="num == 1">
            <!-- 左 -->
            <article class="s_left">
                <div class="s_l_bottom">
                    <div>
                        <img :src="s_A_img[num2]" alt="">
                        <!-- <img v-if="num2==0" :src="s_A_img1" alt="">
                        <img v-else-if="num2==1" :src="s_A_img2" alt="">
                        <img v-else-if="num2==2" :src="s_A_img3" alt="">
                        <img v-else-if="num2==3" :src="s_A_img4" alt="">
                        <img v-else-if="num2==4" :src="s_A_img5" alt=""> -->
                    </div>
                </div>
            </article>
            <!-- 右 -->
            <article class="s_right">
                <div class="s_r_center">
                    <div>
                        <!-- 选择车的颜色 -->
                        <div class="s_r_c_top">
                            <div><span>选择颜色</span></div>
                            <div>
                                <ul>
                                    <li :class="i == num2?carbor:''" v-for="(index,i) of carColorArr" :key="i"  @click="carborBtn(i)"><img :src="index" alt="" width="45" height="45"></li>
                                </ul>
                            </div>
                            <div class="s_r_c_zt">
                                <span>{{s_r_c_zt1[num2]}}</span>
                                <span>{{s_r_c_zt_Money[num2]}}</span>
                            </div>
                        </div>
                        <hr>
                        <!-- 更换车轮胎 -->
                        <div class="s_r_c_bottom">
                            <div><span>选择轮毂</span></div>
                            <div>
                                <ul>
                                    <li :class="i == num3?carbor1:''" v-for="(index,i) of TireArr" :key="i" @click="carborBtn1(i)">
                                        <img :src="index" alt="" width="45" height="45">
                                    </li>
                                </ul>
                            </div>
                            <div class="s_r_c_zt">
                                <span>{{s_r_c_Tire[num3]}}</span>
                                <span>{{s_r_c_Tire_Money[num3]}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>
        <!-- ################################ 3.内饰 ################################-->
        <section v-else-if="num == 2">
            <!-- 左 -->
            <article class="s_left">
                <div class="s_r_interior_img">
                    <img src="/images/carType/Model3Customized/compositor6.png" alt="">
                </div>
            </article>
            <!-- 右 -->
            <article class="s_right">
                <div class="s_r_interior">
                    <!-- 选择内饰 -->
                    <div class="s_r_i_top">

                    </div>
                    <!-- 套件包含: -->
                    <div class="s_r_i_bottom">

                    </div>
                </div>
            </article>
        </section>
        <!-- 底部 -->
        <footer>
           <Calculator></Calculator>
        </footer>
    </div>
</template>
<script>
export default {
    data(){
        return{
            num: 0,
            num1: 0,
            DtitleArr:['1.车型','2.外观','3.内饰','4.Autopilot 自动辅助驾驶','5.付款'],
            carColorArr:['/images/carType/ui_swat_col_ppsw.png','/images/carType/ui_swat_col_pbsb.png','/images/carType/ui_swat_col_pmng.png','/images/carType/ui_swat_col_ppsb.png','/images/carType/ui_swat_col_ppmr.png'],
            TireArr:['/images/carType/ui_swat_whl_wtas.png','/images/carType/ui_swat_whl_wttc.png'],
            ok:{ok:true},
            s_r_bor:{s_r_bor:true},
            isbor: 0,  //车型右类名
            s_img:['/images/carType/Whitecar.png','/images/carType/Whitecar2.png','/images/carType/Whitecar1.png',],
            // 2.外观
            num2:0, //车的颜色
            carbor:{carbor:true},
            s_A_img:['/images/carType/Whitecar1.png','/images/carType/Whitecar2.png','/images/carType/Whitecar3.png','/images/carType/Whitecar4.png','/images/carType/Whitecar5.png'],
            s_r_c_zt1:['珍珠白（多涂层）','纯黑色','冷光银','深海蓝','中国红（多涂层）'],
            s_r_c_zt_Money:['包括','¥ 13,900','¥ 13,900','¥ 13,900','¥ 23,600'],
            num3:0, //车轮胎
            carbor1:{carbor1:true},
            s_r_c_Tire:['18 英寸动力轮毂','19 英寸银色轮毂'],
            s_r_c_Tire_Money:['包括','¥ 9,900'],
        }
    },
    methods:{
        navBtn(index){
            this.num = index;
        },
        borBtn(){
            this.isbor = 0;
            this.num1 = 0;
        },
        borBtn1(){
            this.isbor = 1;
            this.num1 = 1;
        },
        borBtn2(){
            this.isbor = 2;
            this.num1 = 2;
        },
        carborBtn(index){
            this.num2 = index;
        },
        carborBtn1(index){
            this.num3 = index;
        }
    },
    computed:{
    }

}
</script>
<style>
html,
body,
#app{
  height: 100%;
  margin: 0;
  padding: 0;
}
/* 头部导航 */
#design header{
    position: relative;
    display: flex;
    border: 1px solid #dfdfdf;
}
#design header > div{
    flex-direction: row;
    flex-grow: 1;
    align-content: center;
}
#design .d_left{
    padding: 20px 0;
    width: 120px;
    margin-left: 50px;
}
#design .d_nav_center{
    width: 1430px;
}
#design .d_nav_center ul{
    display: flex;
    text-align: center;
    align-content: center;
}
#design .d_nav_center li{
    padding: 20px 0;
    flex-grow: 1;
    cursor: pointer;
    color: #c3baba;
    border-bottom: 3px solid transparent;
}
#design .d_nav_center .ok{
    color: #000;
    border-bottom: 3px solid #007fff;
}
#design .d_right{
    width: 200px;
    margin-right: 23px;
    padding: 20px 0;
    display: flex;
    font-weight: bold;
    justify-content: flex-end;
}
/* 身子左边 */
/* 1.车型 */
#design section{
    position: absolute;
    left: 0;
    height: 90%;
    display: flex;
}

#design .s_left{ 
    overflow: hidden;
    border-right: 1px solid #dfdfdf;
}
#design .s_left .s_l_top{
    width: 465px;
    display: flex;
    background-color: #e8e8e8;
    padding: 5px 15px;
    border-radius: 6px;
    margin: 0px auto;
    margin-top: 10px;
}
#design .s_left .s_l_bottom{
    position: relative;
}
#design .s_left .s_l_top i{
    margin-right: 10px;
    color: rgb(62, 106, 224);
}
/*组件*/
#design .s_left .s_l_M ul{
    position: absolute;
    bottom: 115px;
    display:flex;
    justify-content: center;
}
#design .s_left .s_l_M ul li{
    text-align: center;
    color: #000;
}
#design .s_left .s_l_M ul li{
    opacity: 1;
}
#design .s_left .s_l_M ul li>div{
    font-size: 34px;
}
#design .s_left .s_l_M ul li>p{
    font-size: 16px;
    color: #666;
}
#design .s_left .s_l_M ul .shu{
    background-color: #ddd;
    width: 1px;
    height: 72px;
}

/* 身子右边 */
#design .s_right{
    min-width: 445px;
    height: 100%;
    padding: 50px;
    overflow: auto;
    color: #000;
}
#design .s_right .s_r_content span{
    font-size: 20px;
}
#design .s_right .s_r_content_1{
    margin: 20px 0 10px;
}
#design .s_right .s_r_content_1 div{
    margin-bottom: 15px;
}
#design .s_right .s_r_content_1 .s_r_c1{
    color: #c1c1c1;
    font-size: 13px;
    padding-bottom: 4px;
    border-bottom: 1px solid #c1c1c1;
    transition: all .5s;
}
#design .s_right .s_r_content_1 .s_r_c1:hover{
    border-bottom: 2px solid #000;
    color: #000;
}
#design .s_right .s_r_content_1 .s_r_c2{
    border: 2px solid #ddd;
    border-radius: 25px;
    padding: 15px 20px;
    cursor: pointer;
}
#design .s_right .s_r_content_1 .s_r_bor{
    border: 2px solid rgb(62, 106, 224);

}
#design .s_right .s_r_content_1 .s_r_c2{
    display: flex;
    justify-content: space-between;
    font-size: 13px;
}
#design .s_right .s_r_content_1 .s_r_c2>p:nth-child(2){
    margin-left: 30px;
    color: #666;
}
#design .s_right .s_r_content_2 div > p:nth-child(1){
    font-size: 12px;
}
#design .s_right .s_r_content_2 div > p:nth-child(2){
    margin: 10px 0;
    font-size: 12px;
}
#design .s_right .s_r_content_2 ul li{
    list-style: disc;
    color: #666;
    margin-left: 40px;
    padding: 5px 0px;
    font-size: 14px;
}
/* 2.外观 */
#design .s_right .s_r_center{
    margin: 200px 20px;
}
/* 选择车的颜色 */
#design .s_right .s_r_center .s_r_c_top > div{
    margin-bottom: 10px;
}
#design .s_right .s_r_center .s_r_c_top div:nth-child(1){
    font-size: 20px;
}
#design .s_right .s_r_center .s_r_c_top div:nth-child(3)>span:nth-child(2){
    text-align: right;
}
#design .s_right .s_r_center .s_r_c_top ul{
    display: flex;
}
#design .s_right .s_r_center .s_r_c_top ul li{
    margin-right: 10px;
    padding: 5px;
    border: 2px solid transparent;
}
#design .s_right .s_r_center .s_r_c_top li.carbor{
    border-radius: 50%;
    border: 2px solid rgb(0, 127, 255);
}
/* 更换车轮胎 */
#design .s_right .s_r_center .s_r_c_bottom ul{
    display: flex;
}
#design .s_right .s_r_center .s_r_c_bottom > div{
    margin-bottom: 10px;
}
#design .s_right .s_r_center .s_r_c_bottom div:nth-child(1){
    font-size: 20px;
}
#design .s_right .s_r_center .s_r_c_bottom ul li{
    margin-right: 20px;
    padding: 5px;
    border: 2px solid transparent;
}

#design .s_right .s_r_center div .s_r_c_zt{
    display: flex;
    justify-content: space-between;
}
#design .s_right .s_r_center .s_r_c_bottom li.carbor1{
    border-radius: 50%;
    border: 2px solid rgb(0, 127, 255);
}
/* 3.内饰 */
#design .s_r_interior_img{
    width: 100%;
    height: 100%;
}
#design .s_r_interior_img img{
    width: 100%;
    height: 100%;
}
/* 尾部 */
#design footer{
    width: 100%;
    height: 100px;
    position: fixed;
    bottom: 0px;
}
</style>