import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import Login from '../views/Login.vue';  //登录页面
import Register from '../views/Register.vue';  //注册页面
import Helloworld from '../views/HelloWorld.vue';//测试用
import Drive from '../views/Drive.vue';//预约试驾
import MODEL3 from '../views/MODEL3.vue';
import MODELS from '../views/MODELS.vue';
import MODELX from '../views/MODELX.vue';
import MODELY from '../views/MODELY.vue';
import Cybertruck from '../views/Cybertruck.vue';

import Design from '../views/Design.vue'; //定制页面


Vue.use(VueRouter)

const routes = [
  {path: '/',name: 'Home',component: Home,meta: {title:'往期日报'}},
  {path: '/a',component: Helloworld},
  {path:'/login',name:'Login',component:Login},   //登录页面
  {path:'/register',name:'Register',component:Register},  //注册页面
  {path: '/model3',name: 'MODEL3',component: MODEL3},
  {path:'/models',name:'MODELS',component:MODELS},
  {path:'/modex',name:'MODELS',component:MODELX},
  {path:'/modely',name:'MODELS',component:MODELY},
  {path:'/cybertruck',name:'Cybertruck | 特斯拉中国',component:Cybertruck},
  {path:'/drive',name:'Schedule a Test Drive | Tesla',component:Drive},//预约试驾页
  {path:'/design',component:Design},
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  routes
})
// 改变title
router.beforeEach((to, from, next) => {
  /* 路由发生变化修改页面title */
  if (to.meta.title) {
      document.title = to.meta.title
  }
  next()
})
export default router
