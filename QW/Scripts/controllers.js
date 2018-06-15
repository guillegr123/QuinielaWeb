var qwControllers = angular.module('qwControllers', []);

qwControllers
    .run(function ($rootScope) {
        $rootScope.userAuthenticated = false;
        $rootScope.user = null;
    })
    .config(['$httpProvider', function ($httpProvider) {
        //initialize get if not there
        if (!$httpProvider.defaults.headers.get) {
            $httpProvider.defaults.headers.get = {};
        }
        //disable IE ajax request caching
        $httpProvider.defaults.headers.get['If-Modified-Since'] = '0';
        $httpProvider.defaults.headers.get['Cache-Control'] = 'no-cache';
        $httpProvider.defaults.headers.get['Pragma'] = 'no-cache';
    }])
    .controller('MainCtrl', ['$rootScope', '$scope', '$http', '$location', 'User', function ($rootScope, $scope, $http, $location, User) {
        $scope.logout = function () {
            $http.get('/logout')
                   .success(function (res) {
                       if (res.resultado) {
                           User.setAuthenticated(false);
                           $rootScope.userAuthenticated = false;
                           $rootScope.user = null;
                           $location.path('/login');
                       } else {
                           alert(res.Message);
                       }
                   }).error(function () {
                       alert('Se produjo un error al intentar salir.');
                   });
        };
        $scope.isPathActive = function (viewLocation) {
            return viewLocation === $location.path();
        };
    }])
    .controller('LoginCtrl', ['$rootScope', '$scope', '$http', '$location', 'User', function ($rootScope, $scope, $http, $location, User) {
        $scope.alias = null;
        $scope.contrasena = null;
        $scope.msjerror = null;
        $scope.login = function (alias, contrasena) {
            if (alias == null || alias == '' || contrasena == null || contrasena == '') return null;
            return $http
              .post('/login', { "alias": alias, "contrasena": contrasena })
              .success(function (res) {
                  if (res.resultado) {
                      User.setAuthenticated(true);
                      $rootScope.userAuthenticated = true;
                      $rootScope.user = res.usuario;
                      $location.path('/pronosticos');
                  } else {
                      $scope.contrasena = null;
                      $scope.msjerror = 'Alias o contraseña incorrecta.';
                  }
              }).error(function () {
                  $scope.msjerror = "Se produjo un error al intentar ingresar.";
              });
        }
    }])
    .controller('PronosticosCtrl', ['$scope', '$http', '$location', '$interval', 'Pronosticos', 'User', function ($scope, $http, $location, $interval, Pronosticos, User) {
        if (!User.isAuthenticated()) {
            $location.path('/login');
            return;
        }
        Pronosticos.query(function (res) {
            $scope.etapas = res.etapas;
        }, function (error) {
            window.alert('Error: No se pudo cargar la lista de partidos.');
        });
        $scope.editar = function (partido) {
            $scope.partido = partido;
            $scope.pronostico = { idPartido: partido.idPartido, equipo1: partido.equipo1, equipo2: partido.equipo2, goles1: (partido.golesPronostico1 || 0).toString(), goles2: (partido.golesPronostico2 || 0).toString() };
            $scope.pronostico_form.$setPristine();
        };
        $scope.guardar = function (pronostico) {
            $http.post('participante/pronosticos', pronostico)
                .success(function (res) {
                    $scope.partido.golesPronostico1 = res.pronostico.goles1;
                    $scope.partido.golesPronostico2 = res.pronostico.goles2;
                }).error(function (res) {
                    if ('responseStatus' in res && 'message' in res.responseStatus) {
                        window.alert('Error: ' + res.responseStatus.message);
                    } else {
                        window.alert('Error: El pronóstico no pudo ser guardado.');
                    }
                });
        };
        $scope.upQty = function (pronostico, num) {
            switch (num) {
                case 1:
                    if (parseInt(pronostico.goles1) > 100000) return;
                    pronostico.goles1 = (parseInt(pronostico.goles1) + 1).toString();
                    $scope.pronostico_form.goles1.$setViewValue($scope.pronostico_form.goles1.$viewValue);
                    break;
                case 2:
                    if (parseInt(pronostico.goles2) > 100000) return;
                    pronostico.goles2 = (parseInt(pronostico.goles2) + 1).toString();
                    $scope.pronostico_form.goles2.$setViewValue($scope.pronostico_form.goles2.$viewValue);
                    break;
                default: break;
            }
        };
        $scope.downQty = function (pronostico, num) {
            switch (num) {
                case 1:
                    if (parseInt(pronostico.goles1) <= 0) return;
                    pronostico.goles1 = (parseInt(pronostico.goles1) - 1).toString();
                    $scope.pronostico_form.goles1.$setViewValue($scope.pronostico_form.goles1.$viewValue);
                    break;
                case 2:
                    if (parseInt(pronostico.goles2) <= 0) return;
                    pronostico.goles2 = (parseInt(pronostico.goles2) - 1).toString();
                    $scope.pronostico_form.goles2.$setViewValue($scope.pronostico_form.goles2.$viewValue);
                    break;
                default: break;
            }
        };
        var intervaloActualizacion;
        intervaloActualizacion = $interval(function () {
            Pronosticos.query(function (res) {
                $scope.etapas = res.etapas;
            }, function (error) {
                //window.alert('Error: No se pudo cargar la lista de partidos.');
            });
        }, 300000);

        $scope.$on('$destroy', function () {
            // Make sure that the interval is destroyed too
            if (angular.isDefined(intervaloActualizacion)) {
                $interval.cancel(intervaloActualizacion);
                intervaloActualizacion = undefined;
            }
        });
    }])
    .controller('PuntajesCtrl', ['$scope', '$http', '$location', 'User', function ($scope, $http, $location, User) {
        if (!User.isAuthenticated()) {
            $location.path('/login');
            return;
        }
        $http.get('/puntajes')
            .success(function (res) {
                $scope.estadisticas = res;
            })
            .error(function (res) {
                window.alert('Error: No se pudo cargar la información de puntajes.');
            });
    }]);