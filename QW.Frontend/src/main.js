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
import moment from 'moment'
import store from './store'
import App from './App'
import HomePage from './pages/HomePage'
import MainPage from './pages/MainPage'
import JornadasPage from './pages/JornadasPage'
import PuntajesPage from './pages/PuntajesPage'
import ReglasPage from './pages/ReglasPage'
import LoginPage from './pages/LoginPage'

$ons.platform.select('android')

Vue.config.productionTip = false

Vue.filter('formatLocalDate', function (value) {
  if (value) {
    return moment(String(value)).local().format('llll')
  }
})

Vue.use($ons)
Object.values(VOns).forEach(comp => Vue.component(comp.name, comp))

Vue.use(VueRouter)
const routes = [
  {
    name: 'inicio',
    path: '/',
    component: HomePage,
    children: [
      {
        path: 'reglas',
        component: ReglasPage
      }
    ]
  },
  {
    name: 'principal',
    path: '/principal',
    component: MainPage,
    children: [
      {
        path: ':etapaNivel1/partidos',
        component: JornadasPage,
        props: true
      },
      {
        path: 'puntajes',
        component: PuntajesPage
      },
      {
        path: 'reglas',
        component: ReglasPage
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

  var matched0 = to.matched[0]

  // Reset pageStack to the new route in main navigator
  store.commit('navigator/reset', matched0.components.default)

  var navigator = 'homeNavigator'
  if (matched0.name === 'principal') {
    navigator = 'mainNavigator'
  }

  // If there is a child route, then set splitter content inner navigator
  if (to.matched.length > 1) {
    var component = to.matched[1].components.default

    store.commit(navigator + '/reset', {
      extends: component,
      data () {
        return {
          routeParams: to.params
        }
      }
    })
  } else if (matched0.name === 'inicio') {
    // Logout
    store.commit('usuario/limpiar')

    // Go to login page
    store.commit(navigator + '/reset', {
      extends: LoginPage,
      data () {
        return {
          routeParams: to.params
        }
      }
    })
  }

  // Cerrando menú
  store.commit('splitter/toggle', false)

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
