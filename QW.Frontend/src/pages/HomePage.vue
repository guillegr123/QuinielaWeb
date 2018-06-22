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

    <v-ons-card>
      <div class="title">
        Iniciar sesión
      </div>
      <div class="content">
        <v-ons-list>
          <v-ons-list-item>
            <div class="center">
              
              <ons-row>
                <ons-col width="100%">
                  <v-ons-input placeholder="Alias" float v-model="alias">
                  </v-ons-input>
                </ons-col>
              </ons-row>
              <ons-row>
                <ons-col width="100%">
                  <v-ons-input placeholder="Contraseña" float v-model="contrasena">
                  </v-ons-input>
                </ons-col>
              </ons-row>
            </div>
          </v-ons-list-item>
          <v-ons-list-item>
          </v-ons-list-item>
        </v-ons-list>
      </div>
    </v-ons-card>

  </v-ons-page>
</template>

<script>
export default {
  name: 'home',
  data () {
    return {
      alias: '',
      contrasena: ''
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
