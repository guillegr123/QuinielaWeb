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
        push (state, page) {
          state.stack.push(page)
        },
        pop (state) {
          if (state.stack.length > 1) {
            state.stack.pop()
          }
        },
        replace (state, page) {
          state.stack.pop()
          state.stack.push(page)
        },
        reset (state, page) {
          console.log(state.stack)
          state.stack = Array.isArray(page) ? page : [page || state.stack[0]]
        }
      }
    },
    innerNavigator: {
      namespaced: true,
      state: {
        stack: []
      },
      getters: {
        pageStack: state => state.stack
      },
      mutations: {
        push (state, page) {
          state.stack.push(page)
        },
        pop (state) {
          if (state.stack.length > 1) {
            state.stack.pop()
          }
        },
        replace (state, page) {
          state.stack.pop()
          state.stack.push(page)
        },
        reset (state, page) {
          console.log(state.stack)
          state.stack = Array.isArray(page) ? page : [page || state.stack[0]]
        }
      }
    }
  }
})
