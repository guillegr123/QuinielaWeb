<template>
  <v-ons-page>
    <div class="container">
      <div class="row" v-for="grupoPartidos in partidosAgrupados"  v-bind:todo="grupoPartidos" :key="grupoPartidos.id">
        <div class="col-sm-12 col-md-6" v-for="partido in grupoPartidos.partidos" :key="partido.idPartido">
          <v-ons-card>
            <div class="title">
              {{ partido.etapa }}
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
  </v-ons-page>
</template>

<script>
export default {
  name: 'partidos',
  props: [ 'partidos' ],
  created () {
    // Creando grupos de 3 partidos, para dibujar en filas
    var cont = 0
    var i = -1
    this.partidos.forEach(p => {
      if (cont % 2 === 0) {
        i++
        this.partidosAgrupados.push({
          id: i,
          partidos: [p]
        })
      } else {
        this.partidosAgrupados[i].partidos.push(p)
      }
      cont++
    })
  },
  data () {
    return {
      partidosAgrupados: []
    }
  }
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
