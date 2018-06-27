import axios from 'axios'

const API_URL = 'http://localhost:60402'

const API_PARTIDOS_URL = API_URL + '/participante/pronosticos'

axios.defaults.headers.post['Content-Type'] = 'application/json'
axios.defaults.withCredentials = true

export default {
  obtenerPronosticosParticipante (nombreEtapa1: string):  Promise<any> {
    return axios.get(API_PARTIDOS_URL + '/' + nombreEtapa1)
      .then((res) => {
        return res.data
      }).catch((error) => {
        console.log(error)
        return { error: true }
      })
  }
}