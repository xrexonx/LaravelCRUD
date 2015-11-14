(function() {
    'use strict';

    angular
        .module('UnknownControllers')
        .controller('AuthController', function (Auth) {

            Materialize.toast('Yeah', 4000)
            var vm = this;
            vm.users = {};

            vm.actions = {
                login: function () {

                    var credentials = {
                        email: vm.email,
                        password: vm.password
                    }

                    Auth.login(credentials).then(function(response) {
                        Materialize.toast(response.data.message, 4000)
                    });
                },
                signUp: function () {
                    Auth.signUp(vm.users).success(function( response ) {
                        console.log(response);
                    });
                }
            }
        });

})();