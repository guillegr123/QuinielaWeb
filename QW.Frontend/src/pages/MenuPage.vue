<template>
  <v-ons-page>
    <v-ons-toolbar modifier="transparent"></v-ons-toolbar>
    <div class="header">
      <img src="../assets/onsenui-logo.png" alt="onsenui-logo">
    </div>

    <v-ons-list-title>Menú</v-ons-list-title>
    <v-ons-list>
      <v-ons-list-item modifier="chevron" v-for="item in essentialLinks" @click="goTo(item.link)" :key="item.link">
        <div class="left"><v-ons-icon fixed-width :icon="item.icon"></v-ons-icon></div>
        <div class="center">{{ item.label }}</div>
      </v-ons-list-item>
    </v-ons-list>
  </v-ons-page>
</template>

<script>
export default {
  name: 'startMenu',
  data () {
    return {
      essentialLinks: [
        {
          label: 'Iniciar sesión',
          link: 'link1',
          icon: 'fa-id-card-o'
        },
        {
          label: 'Rules',
          link: 'link2',
          icon: 'fa-book'
        }
      ]
    }
  },
  methods: {
    goTo (url) {
      // TODO: Push page
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.header {
  text-align: center;
  margin-bottom: 20px;
}

img {
  max-width: 150px;
}

ons-list-title {
  text-transform: none;
}

ons-list-item {
  cursor: pointer;
}
</style>
