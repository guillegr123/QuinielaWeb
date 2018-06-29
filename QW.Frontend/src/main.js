// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.

import 'font-awesome/css/font-awesome.css'
import 'onsenui/css/onsenui-core.css'
import 'onsenui/css/onsen-css-components.css'
import 'bootstrap-4-grid/css/grid.min.css'

import Vue from 'vue'
import VueRouter from 'vue-router'
import $ons from 'vue-onsenui/esm'
import * as VOns from './vue-onsen-components'
import store from './store'
import App from './App'
import HomePage from './pages/HomePage'
import MainPage from './pages/MainPage'
import JornadasPage from './pages/JornadasPage'

$ons.platform.select('android')

Vue.config.productionTip = false

Vue.use($ons)
Object.values(VOns).forEach(comp => Vue.component(comp.name, comp))

Vue.use(VueRouter)
const routes = [
  {
    path: '/',
    component: HomePage
  },
  {
    path: '/principal',
    component: MainPage,
    children: [
      {
        path: 'grupos',
        component: JornadasPage
      },
      {
        path: 'eliminatorias',
        component: JornadasPage
      }
    ]
  }
]

const router = new VueRouter({
  mode: 'hash',
  base: window.location.href,
  routes // short for `routes: routes`
})

router.beforeEach((to, from, next) => {
  console.log(to)
  console.log(from)
  console.log(next)
  // Reset pageStack to the new route
  store.commit('navigator/reset', to.matched[0].components.default)
  if (to.matched.length > 1) {
    store.commit('innerNavigator/reset', to.matched[1].components.default)
  }
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
