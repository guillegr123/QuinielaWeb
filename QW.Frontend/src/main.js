// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.

import 'font-awesome/css/font-awesome.css'
import 'onsenui/css/onsenui-core.css'
import 'onsenui/css/onsen-css-components.css'

import Vue from 'vue'
import VueRouter from 'vue-router'
import $ons from 'vue-onsenui/esm'
import * as VOns from './vue-onsen-components'
import store from './store'
import App from './App'
import HomePage from './pages/HomePage'
import MainPage from './pages/MainPage'

$ons.platform.select('android')

Vue.config.productionTip = false

Vue.use($ons)
Object.values(VOns).forEach(comp => Vue.component(comp.name, comp))

Vue.use(VueRouter)
const routes = [
  { path: '/', component: HomePage },
  { path: '/principal', component: MainPage }
]

const router = new VueRouter({
  mode: 'hash',
  base: window.location.href,
  routes // short for `routes: routes`
})

router.beforeEach((to, from, next) => {
  // Reset pageStack to the new route
  store.commit('navigator/reset', to.matched.map(m => m.components.default))
  next()
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  store,
  router,
  template: `<App/>`,
  components: { App }
})
