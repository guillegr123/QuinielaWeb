import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    splitter: {
      namespaced: true,
      state: {
        open: false
      },
      mutations: {
        toggle (state, shouldOpen) {
          if (typeof shouldOpen === 'boolean') {
            state.open = shouldOpen
          } else {
            state.open = !state.open
          }
        }
      }
    },
    usuario: {
      namespaced: true,
      state: {
        estaAutenticado: true,
        nombreUsuario: null
      },
      mutations: {
        establecer (state, nombreUsuario) {
          state.nombreUsuario = nombreUsuario
          state.estaAutenticado = true
        },
        limpiar (state) {
          state.nombreUsuario = null
          state.estaAutenticado = false
        }
      }
    },
    navigator: {
      namespaced: true,
      state: {
        stack: []
      },
      getters: {
        pageStack: state => state.stack
      },
      mutations: {
        reset (state, page) {
          state.stack = Array.isArray(page) ? page : [page || state.stack[0]]
        }
      }
    }
  }
})
