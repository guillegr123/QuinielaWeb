<template>
  <v-ons-page>
    <v-ons-toolbar modifier="transparent"></v-ons-toolbar>
    <div class="header">
      <img src="../assets/worldcup2018.jpg" alt="onsenui-logo">
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
import servicioAutenticacion from './../modules/autenticacion'

export default {
  name: 'startMenu',
  data () {
    return {
      essentialLinks: [
        {
          label: 'Grupos',
          link: '/principal/Grupos/partidos',
          icon: 'fa-soccer-ball-o'
        },
        {
          label: 'Eliminatorias',
          link: '/principal/Eliminatorias/partidos',
          icon: 'fa-sitemap'
        },
        {
          label: 'Puntajes',
          link: '/principal/puntajes',
          icon: 'fa-list-ol'
        },
        {
          label: 'Reglas',
          link: '/principal/reglas',
          icon: 'fa-book'
        },
        {
          label: 'Salir',
          link: '/',
          icon: 'power-off'
        }
      ]
    }
  },
  methods: {
    goTo (url) {
      if (url === '/') {
        servicioAutenticacion.cerrarSesion(this.$store)
          .then((res) => {
            if (res.msjError) {
              window.alert(res.msjError)
            } else {
              this.$router.go(-1)
            }
          })
      } else {
        this.$router.replace(url)
      }
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
