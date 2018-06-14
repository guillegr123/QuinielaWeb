var qwApp = angular.module('qwApp', [
    'ngRoute',
    'qwControllers',
    'qwServices'
]);

qwApp.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
        when('/login', {
            templateUrl: 'partials/login.html',
            controller: 'LoginCtrl'
        }).
        when('/pronosticos', {
            templateUrl: 'partials/pronosticos.html',
            controller: 'PronosticosCtrl'
        }).
        when('/puntajes', {
            templateUrl: 'partials/puntajes.html',
            controller: 'PuntajesCtrl'
        }).
        when('/reglas', {
            templateUrl: 'partials/reglas.html'
        }).
        //when('/logout', {
        //    controller: 'LogoutCtrl'
        //}).
        otherwise({
            redirectTo: '/login'
        });
  }]);

// Number-only directive: http://stackoverflow.com/a/19063323/806975
qwApp.directive('validNumber', function () {
    return {
        require: '?ngModel',
        link: function (scope, element, attrs, ngModelCtrl) {
            if (!ngModelCtrl) {
                return;
            }

            ngModelCtrl.$parsers.push(function (val) {
                var clean;
                if (val) {
                    clean = val.replace(/[^0-9]+/g, '');
                } else {
                    clean = '0';
                }
                if (val !== clean) {
                    ngModelCtrl.$setViewValue(clean);
                    ngModelCtrl.$render();
                }
                return clean;
            });

            element.bind('keypress', function (event) {
                if (event.keyCode === 32) {
                    event.preventDefault();
                }
            });
        }
    };
});

///*
//     * groupBy
//     *
//     * Define when a group break occurs in a list of items
//     *
//     * @param {array}  the list of items
//     * @param {String} then name of the field in the item from the list to group by
//     * @returns {array}	the list of items with an added field name named with "_new"
//     *					appended to the group by field name
//     *
//     * @example		<div ng-repeat="item in MyList  | groupBy:'groupfield'" >
//     *				<h2 ng-if="item.groupfield_CHANGED">{{item.groupfield}}</h2>
//     *
//     *				Typically you'll want to include Angular's orderBy filter first
//     */

//qwApp.filter('groupBy', ['$parse', function ($parse) {
//    return function (list, group_by) {

//        var filtered = [];
//        var prev_item = null;
//        var group_changed = false;
//        // this is a new field which is added to each item where we append "_CHANGED"
//        // to indicate a field change in the list
//        //was var new_field = group_by + '_CHANGED'; - JB 12/17/2013
//        var new_field = 'group_by_CHANGED';

//        // loop through each item in the list
//        angular.forEach(list, function (item) {

//            group_changed = false;

//            // if not the first item
//            if (prev_item !== null) {

//                // check if any of the group by field changed

//                //force group_by into Array
//                group_by = angular.isArray(group_by) ? group_by : [group_by];

//                //check each group by parameter
//                for (var i = 0, len = group_by.length; i < len; i++) {
//                    if ($parse(group_by[i])(prev_item) !== $parse(group_by[i])(item)) {
//                        group_changed = true;
//                    }
//                }


//            }// otherwise we have the first item in the list which is new
//            else {
//                group_changed = true;
//            }

//            // if the group changed, then add a new field to the item
//            // to indicate this
//            if (group_changed) {
//                item[new_field] = true;
//            } else {
//                item[new_field] = false;
//            }

//            filtered.push(item);
//            prev_item = item;

//        });

//        return filtered;
//    };
//}]);