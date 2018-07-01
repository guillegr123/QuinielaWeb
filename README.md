# Quiniela Web
Proyecto para manejar pronósticos y resultados de partidos para la Copa Mundial de la Fifa, y calcular puntajes de los participantes en base a los pronósticos ingresados. Proceso conocido comúnmente como "Quiniela".

## Tecnologías
La solución es un SPA + Servicio Web + base de datos, que incluye 4 proyectos:

### QW
Proyecto principal, que contiene el servicio web creado con .NET Framework y Service Stack 3.9, y además se encarga de servir los componentes de HTML, JavaScript y CSS de la Single Page Application (SPA) como contenido estático.

### QW.Data
Incluye las clases modelo de la base de datos, así como los respectivos mapeos de las tablas. El acceso a la base de datos se realiza con NHibernate, y el mapeo de las clases con Fluent NHibernate.

### QW.Db
Es un proyecto de Visual Studio para base de datos para SQL Server 2014, que contiene todos los objetos de esta, así como un perfil de publicación en XML, para poder crear la base de datos en una instancia local de SQL Server 2014 Express Edition. Las propiedades del proyecto pueden modificarse para crear la base de datos en cualquier otra versión de SQL Server desde 2005 en adelante, ya que los objetos definidos son bastante básicos.

### QW.Frontend
Este es un proyecto de Node JS, que se creó a partir de la plantilla de vue-cli [vue-pwa-webpack](https://github.com/OnsenUI/vue-pwa-webpack), que es una plantilla PWA (Progressive Web App) completa con webpack, hot-reload, lint-on-save, pruebas unitarias y extracción de CSS. El proyecto es una Single Page Application (SPA) creada utilizando [Vue JS 2 + Onsen UI](https://onsen.io/vue/), que incluye el uso de TypeScript, y los componentes [Vue Router](https://router.vuejs.org/), [Vuex](https://vuex.vuejs.org/) y [axios](https://github.com/axios/axios) para las peticiones a servicios web. Por otra parte se añadieron las [utilidades de grid (cuadícula) y layout (disposición) de Bootstrap 4](https://www.npmjs.com/package/bootstrap-4-grid), para mejorar la responsividad del la página a los distintos tamaños de pantallas.
