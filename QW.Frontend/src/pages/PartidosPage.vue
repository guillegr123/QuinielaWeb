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
              <v-ons-card>
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
  </v-ons-page>
</template>

<script>
export default {
  name: 'partidos',
  props: [ 'etapas' ]
}
</script>

<style scoped>
.versus {
    vertical-align:middle;
    text-align:center;
    font-size:1em;
    padding-top:1em;
}

.bandera {
  width:100%;
}
</style>
