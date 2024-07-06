import Vue from 'vue'
import App from './App.vue'
import router from './router'
import './assets/css/style.css'
import {getRequest} from "@/api/api";

Vue.prototype.getRequest = getRequest;


Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
