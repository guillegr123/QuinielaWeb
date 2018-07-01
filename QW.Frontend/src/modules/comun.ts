export default {
  manejarErrorHttp (error: any) {
    console.log(error)
    if (error.response) {
      console.log(error.response.status)
      return { error: true, noAutorizado: true }
    }
    return { error: true }
  }
}