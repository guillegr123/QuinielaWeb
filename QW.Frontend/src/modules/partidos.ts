import axios from 'axios'

const API_URL = '' // 'http://localhost:60402'

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
  },
  guardarPronostico (idPartido: number, goles1: number, goles2: number): Promise<any> {
    return axios.post(API_PARTIDOS_URL, { idPartido: idPartido, goles1: goles1, goles2: goles2 })
      .then((res) => {
        return { error: false }
      }).catch((error) => {
        console.log(error)
        return { error: true }
      })
  }
}