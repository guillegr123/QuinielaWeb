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
        Iniciar sesión
      </div>
      <div class="content">
        <form @submit.prevent="iniciarSesion">
          <div class="center">
            
            <ons-row>
              <ons-col width="100%">
                <v-ons-input placeholder="Alias" float v-model="inicioSesion.alias">
                </v-ons-input>
              </ons-col>
            </ons-row>
            <ons-row>
              <ons-col width="100%">
                <v-ons-input placeholder="Contraseña" type="password" float v-model="inicioSesion.contrasena">
                </v-ons-input>
              </ons-col>
            </ons-row>
          </div>
          <div class="red label" v-show="inicioSesion.msjError">{{ inicioSesion.msjError }}</div>
          <v-ons-button style="margin: 6px 0" @click="iniciarSesion">Iniciar sesión</v-ons-button>
          <!-- Submit button added only to allow to perform submit action on pression Enter -->
          <button type="submit" style="display:none">Submit</button>
        </form>
      </div>
    </v-ons-card>

  </v-ons-page>
</template>

<script>
import servicioAutenticacion from './../modules/autenticacion'

export default {
  name: 'login',
  data () {
    return {
      inicioSesion: {
        alias: '',
        contrasena: null,
        msjError: null
      },
      procesando: false
    }
  },
  methods: {
    iniciarSesion () {
      this.procesando = true
      servicioAutenticacion.iniciarSesion(this.$store, this.inicioSesion.alias, this.inicioSesion.contrasena)
        .then((res) => {
          if (res.msjError) {
            this.inicioSesion.contrasena = null
            this.inicioSesion.msjError = res.msjError
          } else {
            this.inicioSesion.msjError = null
            console.log('Login exitoso. Yendo a pagina principal...')
            this.$router.push('principal/Grupos/partidos')
          }
          // this.$router.push('principal/Grupos/partidos')
          this.procesando = false
        })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.header {
  text-align: center;
}

img {
  max-width: 300px;
}

ons-list-title {
  text-transform: none;
}

ons-list-title:not(:first-of-type) {
  margin-top: 30px;
}

@media (min-width: 500px) {
  ons-card {
    width: 480px;
    margin-left: auto;
    margin-right: auto;
  }
}

ons-card {
  text-align: center;
}

ons-list-item, ons-card {
  cursor: pointer;
}

ons-input {
    width: 100%;
}

ons-row {
  padding-bottom: 2em;
}
</style>
