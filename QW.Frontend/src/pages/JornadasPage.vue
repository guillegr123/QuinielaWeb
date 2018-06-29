<template>
  <v-ons-page>
    <v-ons-toolbar>
      <div class="left">
        <v-ons-toolbar-button @click="$store.commit('splitter/toggle')">
          <v-ons-icon icon="fa-bars"></v-ons-icon>
        </v-ons-toolbar-button>
      </div>
      <div class="center">{{ title }}</div>
    </v-ons-toolbar>

    <v-ons-progress-bar indeterminate v-show="procesando"></v-ons-progress-bar>

    <v-ons-tabbar swipeable position="auto"
      :tabs="tabs"
      :visible="true"
      :index.sync="activeIndex"
    >
    </v-ons-tabbar>
  </v-ons-page>
</template>

<script>
import ServicioPartidos from './../modules/partidos'
import CargandoPage from './CargandoPage'
import PartidosPage from './PartidosPage'

export default {
  name: 'jornadas',
  created () {
    ServicioPartidos.obtenerPronosticosParticipante(this.routeParams.etapaNivel1)
      .then((jornadas) => {
        if (jornadas.error) {
          // TODO: Mostrar mensaje de error
        } else {
          jornadas.etapas.forEach(e => {
            this.internalTabs.push({
              icon: null,
              label: e.nombre,
              page: PartidosPage,
              props: {
                etapas: e.subEtapas
              },
              key: e.nombre
            })
          })
        }
        this.procesando = false
      })
  },
  data () {
    return {
      activeIndex: 0,
      internalTabs: [],
      procesando: true
    }
  },
  methods: {
  },
  computed: {
    title () {
      if (this.internalTabs.length === 0) return 'Partidos'
      return this.internalTabs[this.activeIndex].label
    },
    tabs () {
      if (this.internalTabs.length === 0) {
        return {
          icon: null,
          label: 'Cargando partidos...',
          page: CargandoPage,
          key: 'Cargando'
        }
      } else {
        return this.internalTabs
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>