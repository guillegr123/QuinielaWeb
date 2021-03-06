import axios from 'axios'
import Comun from './comun'

const API_URL = '' // 'http://localhost:60402'

const API_PUNTAJES_URL = API_URL + '/puntajes'

axios.defaults.headers.post['Content-Type'] = 'application/json'
axios.defaults.withCredentials = true

export default {
  obtenerPuntajes ():  Promise<any> {
    return axios.get(API_PUNTAJES_URL)
      .then((res) => {
        return res.data
      }).catch((error) => {
        return Comun.manejarErrorHttp(error)
      })
  }
}