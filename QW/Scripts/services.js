var qwServices = angular.module('qwServices', ['ngResource']);

qwServices.factory('Pronosticos', ['$resource',
    function ($resource) {
        return $resource('participante/pronosticos', null, {
            query: { method: 'GET', isArray: false },
            save: { method: 'POST' }
        });
    }]);

qwServices.service('User', function(){
    var userIsAuthenticated = false;

    this.setAuthenticated = function(value){
        userIsAuthenticated = value;
    };

    this.isAuthenticated = function () {
        return userIsAuthenticated;
    };
});