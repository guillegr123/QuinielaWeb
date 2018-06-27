<template>
  <v-ons-page>
    <div class="container">
      <div class="row" v-for="etapa in etapas" :key="etapa.nombre">
        <div class="col-12">

          <div class="row">
            <div class="col">
              <h3>{{ etapa.nombre }}</h3>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-12 col-md-6" v-for="partido in etapa.partidos" :key="partido.idPartido">
              <v-ons-card @click="editarPronostico(partido)">
                <div class="sub title">
                  {{ partido.lugar }}
                </div>
                <div class="content">
                  <div class="container">
                    <div class="row">
                      <div class="col-8">
                        <h5>Equipos</h5>
                      </div>
                      <div class="col-2">
                        <h5>P</h5>
                      </div>
                      <div class="col-2">
                        <h5>R</h5>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <img :src="'/static/img/flags/' + partido.codigo1 + '.png'" :alt="partido.codigo1" class="bandera">
                      </div>
                      <div class="col-5">
                        {{ partido.equipo1 }}
                      </div>
                      <div class="col-2">
                        {{ partido.golesPronostico1 }}
                      </div>
                      <div class="col-2">
                        {{ partido.goles1 }}
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <img :src="'/static/img/flags/' + partido.codigo2 + '.png'" :alt="partido.codigo2" class="bandera">
                      </div>
                      <div class="col-5">
                        {{ partido.equipo2 }}
                      </div>
                      <div class="col-2">
                        {{ partido.golesPronostico2 }}
                      </div>
                      <div class="col-2">
                        {{ partido.goles2 }}
                      </div>
                    </div>
                  </div>
                </div>
              </v-ons-card>
            </div>
          </div>

        </div>
      </div>
    </div>

    <v-ons-alert-dialog modifier="rowfooter"
      :visible.sync="dialogoPronosticoVisible"
    >
      <span slot="title">Editar pronóstico</span>

      <div>
        <ons-row>
          <ons-col width="100%">
            <v-ons-input type="number" min="0" max="100" :placeholder="pronostico.partido.equipo1" float v-model="pronostico.goles1">
            </v-ons-input>
          </ons-col>
        </ons-row>
        <ons-row>
          <ons-col width="100%">
            <v-ons-input type="number" min="0" max="100" :placeholder="pronostico.partido.equipo2" float v-model="pronostico.goles2">
            </v-ons-input>
          </ons-col>
        </ons-row>
      </div>

      <template slot="footer">
        <v-ons-alert-dialog-button @click="dialogoPronosticoVisible = false">Cancelar</v-ons-alert-dialog-button>
        <v-ons-alert-dialog-button @click="guardarPronostico">Guardar</v-ons-alert-dialog-button>
      </template>
    </v-ons-alert-dialog>

  </v-ons-page>
</template>

<script>
import ServicioPartidos from './../modules/partidos'

export default {
  name: 'partidos',
  props: [ 'etapas' ],
  data () {
    return {
      dialogoPronosticoVisible: false,
      pronostico: {
        partido: {
          equipo1: '', // Para evitar error de renderizacion
          equipo2: '' // Para evitar error de renderizacion
        },
        goles1: 0,
        goles2: 0
      }
    }
  },
  methods: {
    editarPronostico: function (partido) {
      this.pronostico.partido = partido
      this.pronostico.goles1 = partido.golesPronostico1 || 0
      this.pronostico.goles2 = partido.golesPronostico2 || 0
      this.dialogoPronosticoVisible = true
    },
    guardarPronostico: function () {
      ServicioPartidos.guardarPronostico(this.pronostico.partido.idPartido, this.pronostico.goles1, this.pronostico.goles2)
        .then((res) => {
          if (res.error) {
            window.alert('Ocurrió un error al intentar guardar el pronóstico. Recargue la página e intente nuevamente.')
          } else {
            this.pronostico.partido.golesPronostico1 = this.pronostico.goles1
            this.pronostico.partido.golesPronostico2 = this.pronostico.goles2
          }
          this.dialogoPronosticoVisible = false
        })
    }
  }
}
</script>

<style scoped>
.sub.title {
    font-size:0.9em;
}

.bandera {
  width:100%;
}

ons-input {
    width: 100%;
}

ons-row {
  padding-bottom: 2em;
}
</style>
