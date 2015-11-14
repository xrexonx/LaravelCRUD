(function () {
    'use strict';

    angular
        .module('UnknownRoutes')
        .config(function($stateProvider, $urlRouterProvider) {

            function _getView (viewName) {
                return 'views/'+viewName+'.blade.php';
            }

            $stateProvider
                .state('/', {
                    url: '/',
                    templateUrl: _getView('default'),
                    controller: 'UsersController'
                })
                .state('signIn', {
                    url: '/signUp',
                    templateUrl: _getView('signUp'),
                    controller: 'AuthController as auth'
                })
                .state('login', {
                    url: '/login',
                    templateUrl: _getView('login'),
                    controller: 'AuthController as auth'
                })
                .state('dashboard', {
                    url: '/dashboard',
                    templateUrl: _getView('dashboard'),
                    controller: 'DashController as auth'
                });

            $urlRouterProvider.otherwise('/');
        });

})();