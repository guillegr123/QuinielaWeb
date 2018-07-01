import axios from 'axios'

const API_URL = '' // 'http://localhost:60402'

const API_LOGIN_URL = API_URL + '/login'
const API_LOGOUT_URL = API_URL + '/logout'

axios.defaults.headers.post['Content-Type'] = 'application/json'
axios.defaults.withCredentials = true
//axios.defaults.cros = true

export default {
  iniciarSesion (store: any, usuario: string, contrasena: string): Promise<any> {
    return axios.post(API_LOGIN_URL, { 'alias': usuario, 'contrasena': contrasena })
      /*
        ({
        method: 'POST',
        crossDomain: true,
        url: API_LOGIN_URL,
        data: ,
        // mode: 'no-cors',
        headers: {
          // 'Access-Control-Allow-Origin': '*',
          'Content-Type': 'application/json'
        },
        withCredentials: true,
        credentials: 'same-origin'
      })
      */
      .then((res) => {
        if (res.data.resultado) {
          store.commit('usuario/establecer', res.data.usuario)
          return {
            nombreUsuario: res.data.usuario
          }
        } else {
          return {
            msjError: 'Alias o contraseña incorrecta.'
          }
        }
      }).catch((error) => {
        if (error) console.log(error)
        return {
          msjError: 'Se produjo un error al intentar ingresar al sistema. Por favor intente más tarde.'
        }
      })
  },
  cerrarSesion (store: any): Promise<any> {
    return axios.get(API_LOGOUT_URL)
      .then((res) => {
        if (res.data.resultado) {
          store.commit('usuario/limpiar')
          return {
            msjError: null
          }
        } else {
          return {
            msjError: res.data.Message
          }
        }
      }).catch((error) => {
        if (error) console.log(error)
        return {
          msjError: 'Se produjo un error al intentar cerrar la sesión.'
        }
      })
  }
}
