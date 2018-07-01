# Bitácora de cambios
Los cambios notables a este proyecto se documentan en este archivo, a partir de la versión 2.0.0, siguiendo los lineamientos de [Keep a changelog](https://keepachangelog.com/en/1.0.0/). Este proyecto sigue los lineamientos de [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).

## [v2.0.0](https://github.com/guillegr123/QuinielaWeb/tree/v2.0.0) - 2018-06-29

### Agregado
- Nuevo frontend completamente responsivo creado con Vue JS 2 + Onsen UI, y las utilidades de diseño de cuadrícula y disposición de Bootstrap 4.

### Cambiado
- Adición de 3 campos de etapas en tabla **Partido**.
- Cambio en API para solicitar de datos de partidos y pronósticos por *etapa de nivel 1*, y agrupar los datos obtenidos en *etapa de nivel 2* y *etapa de nivel 3*.

### Obsoleto
- Frontend de Angular JS 1.2 y Bootstrap 3.

### Removido
- Eliminada tabla **Etapa**.