import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'  //登录页面
import Register from '../views/Register.vue'  //注册页面
import Details from '../views/Details.vue'  //详情页面

Vue.use(VueRouter)

const routes = [
  {path: '/',name: 'Home',component: Home},
  {path:'/login',name:'Login',component:Login},   //登录页面
  {path:'/register',name:'Register',component:Register},  //注册页面
  {path:'/details',name:'Details',component:Details},  //详情页面
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

export default router
