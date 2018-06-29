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
import MenuPage from './MenuPage'
import { mapGetters } from 'vuex'

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
    }
  },
  components: {
    MenuPage
  },
  methods: {
    /* Override default pop behavior and delegate it to the router */
    goBack () {
      // Go to the parent route component
      this.$router.push({ name: this.$route.matched[this.$route.matched.length - 2].name })

      // this.$router.go(-1); // Could work but might be misleading in some situations
    }
  }
}
</script>

<style>
</style>
