<template>
  <v-ons-page id="principal">
    <v-ons-splitter>
      <v-ons-splitter-side swipeable collapse width="250px"
        :animation="$ons.platform.isAndroid() ? 'overlay' : 'reveal'"
        :open.sync="menuIsOpen">
        <main-menu-page></main-menu-page>
      </v-ons-splitter-side>

      <v-ons-splitter-content>
        <v-ons-navigator swipeable swipe-target-width="200px"
          :page-stack="pageStack"
          :pop-page="goBack"
        ></v-ons-navigator>
      </v-ons-splitter-content>
    </v-ons-splitter>

    <v-ons-alert-dialog modifier="rowfooter"
      :visible.sync="ayudaVisible"
    >
      <span slot="title">Ayuda</span>

      Para establecer tu pronóstico, presiona el partido que desees, y edita los marcadores en la ventana emergente.
      Los partidos que se pueden pronosticar son los que están en tarjetas de color blanco.

      <template slot="footer">
        <v-ons-alert-dialog-button @click="ocultarAyuda">Ok</v-ons-alert-dialog-button>
        <v-ons-alert-dialog-button @click="noVolverAMostrarAyuda">No volver a mostrar</v-ons-alert-dialog-button>
      </template>
    </v-ons-alert-dialog>
  </v-ons-page>
</template>

<script>
import MainMenuPage from './MainMenuPage'
import { mapGetters } from 'vuex'
import cookies from './../modules/cookies'

export default {
  name: 'principal',
  computed: {
    ...mapGetters('mainNavigator', [
      'pageStack'
    ]),
    menuIsOpen: {
      get () {
        return this.$store.state.splitter.open
      },
      set (newValue) {
        this.$store.commit('splitter/toggle', newValue)
      }
    },
    ayudaVisible () {
      if (this.esAyudaVisible && !cookies.get('ayuda')) {
        return true
      }
      return false
    }
  },
  components: {
    MainMenuPage
  },
  methods: {
    /* Override default pop behavior and delegate it to the router */
    goBack () {
      // Go to the parent route component
      this.$router.push({ name: this.$route.matched[this.$route.matched.length - 2].name })

      // this.$router.go(-1); // Could work but might be misleading in some situations
    },
    ocultarAyuda () {
      this.esAyudaVisible = false
    },
    noVolverAMostrarAyuda () {
      cookies.set('ayuda', 'true')
      this.esAyudaVisible = false
    }
  },
  data () {
    return {
      esAyudaVisible: true
    }
  }
}
</script>

<style>
</style>
