import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
// 自定义组件
import LoginNav from './components/LoginNav.vue'       //登录注册头部
import LoginFooter from './components/LoginFooter.vue' //登录注册底部
import myInput from './components/Input.vue' //登录注册底部
import MyHeader from './components/MyHeader.vue' //头部导航栏
import Models_right from './components/Models_right.vue' //Models右边
import Models_centent from './components/Models_centent.vue' //Models中间
import Models_bottom from './components/Models_bottom.vue' //Models下边
// 页面滚动插件
import 'fullpage.js/vendors/scrolloverflow';
import VueFullPage from 'vue-fullpage.js';

Vue.use(VueFullPage);

Vue.config.productionTip = false

axios.defaults.baseURL = 'http://127.0.0.1:5050'
Vue.prototype.axios = axios;

Vue.prototype.qs = qs;

Vue.component('login-nav',LoginNav)
Vue.component('login-footer',LoginFooter)
Vue.component('my-input',myInput)
Vue.component('my-header',MyHeader)
Vue.component('Models-right',Models_right)
Vue.component('Models-centent',Models_centent)
Vue.component('Models-bottom',Models_bottom)

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
