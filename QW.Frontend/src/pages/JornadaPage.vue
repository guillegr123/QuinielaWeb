<template>
  <v-ons-page>
    <div class="container">
      <div class="row" v-for="grupoPartidos in partidosAgrupados"  v-bind:todo="grupoPartidos" :key="grupoPartidos.id">
        <div class="col-sm-12 col-md-6 col-lg-4" v-for="partido in grupoPartidos.partidos" :key="partido.idPartido">
          <v-ons-card>
            <div class="title">
              Awesome framework 1
            </div>
            <div class="content">
              Test
            </div>
          </v-ons-card>
        </div>
      </div>
    </div>
  </v-ons-page>
</template>

<script>
export default {
  name: 'jornada',
  props: [ 'partidos' ],
  created () {
    // Creando grupos de 3 partidos, para dibujar en filas
    var cont = 0
    var i = -1
    this.partidos.forEach(p => {
      if (cont % 3 === 0) {
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

<style>

</style>
