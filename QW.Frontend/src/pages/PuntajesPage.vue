<template>
  <v-ons-page>
    <v-ons-toolbar class="home-toolbar">
      <div class="left">
        <v-ons-toolbar-button @click="$store.commit('splitter/toggle')">
          <v-ons-icon icon="fa-bars"></v-ons-icon>
        </v-ons-toolbar-button>
      </div>
      <div class="center">Quiniela Mundial 2018</div>
    </v-ons-toolbar>

    <v-ons-progress-bar indeterminate v-show="procesando"></v-ons-progress-bar>
    
    <v-ons-card>
      <div class="title">
        Puntajes
      </div>
      <div class="content">
        <div class="row thead">
          <div class="col-2 col-md-1">Pos.</div>
          <div class="col-8 col-md-4">Participante</div>
          <div class="d-none d-md-inline col-md-1">Eq. Fav.</div>
          <div class="d-none d-md-inline col-md-2">Marcadores acertados</div>
          <div class="d-none d-md-inline col-md-2">Resultados acertados</div>
          <div class="col-2 col-md-2">Puntos</div>
        </div>
        <div class="row tbody" v-for="p in puntajes" :key="p.posicion">
          <div class="col-2 col-md-1">{{ p.posicion }}</div>
          <div class="col-8 col-md-4">{{ p.participante }}</div>
          <div class="d-none d-md-inline col-md-1">
            <img :src="'/static/img/flags/' + p.codigoEquipoFav + '.png'" :alt="p.codigoEquipoFav" class="bandera-fav">
          </div>
          <div class="d-none d-md-inline col-md-2">{{ p.marcadoresAcertados }}</div>
          <div class="d-none d-md-inline col-md-2">{{ p.resultadosAcertados }}</div>
          <div class="col-2 col-md-2">{{ p.puntos }}</div>
        </div>
      </div>
    </v-ons-card>
  </v-ons-page>
</template>

<script>
import servicioPuntajes from './../modules/puntajes'

export default {
  name: 'puntajes',
  created () {
    servicioPuntajes.obtenerPuntajes()
      .then((res) => {
        if (res.error) {
          if (res.noAutorizado) {
            this.$router.replace('/')
          } else {
            window.alert('Se produjo un error al intentar obtener los puntajes.')
          }
        } else {
          this.puntajes = res.puntajes
        }
        this.procesando = false
      })
  },
  data () {
    return {
      puntajes: [],
      procesando: true
    }
  }
}
</script>

<!-- Add "scoped" adivivibute to limit CSS to divis component only -->
<style scoped>
.bandera-fav {
  max-width: 100%
}
</style>
