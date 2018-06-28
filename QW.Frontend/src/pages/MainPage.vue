<template>
  <v-ons-page id="principal">
    <v-ons-splitter>
      <v-ons-splitter-side swipeable collapse width="250px"
        :animation="$ons.platform.isAndroid() ? 'overlay' : 'reveal'"
        :open.sync="menuIsOpen">
        <menu-page></menu-page>
      </v-ons-splitter-side>

      <v-ons-splitter-content>
        <v-ons-navigator swipeable swipe-target-width="200px"
          :page-stack="pageStack"
          :pop-page="goBack"
        ></v-ons-navigator>
      </v-ons-splitter-content>
    </v-ons-splitter>
  </v-ons-page>
</template>

<script>
import JornadasPage from './JornadasPage'
import MenuPage from './MenuPage'
import { mapGetters } from 'vuex'

export default {
  name: 'principal',
  computed: {
    menuIsOpen: {
      ...mapGetters('innerNavigator', [
        'pageStack'
      ]),
      get () {
        return this.$store.state.splitter.open
      },
      set (newValue) {
        this.$store.commit('splitter/toggle', newValue)
      }
    }
  },
  components: {
    JornadasPage,
    MenuPage
  }
}
</script>

<style>
</style>
