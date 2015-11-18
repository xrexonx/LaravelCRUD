(function() {
    'use strict';

    angular
        .module('UnknownControllers')
        .controller('IssuesController', function ($scope, $stateParams, Project, Utils) {


            var vm = $scope;
            vm.view = $stateParams.view;

            vm.actions = {
                show: function () {

                    Project
                        .get()
                        .success(function (response) {
                            if (response) {
                                vm.projectList = response;
                            }
                        });
                },
                openModal: function () {
                    Utils.openModal('addIssueModal');
                },
                //create: function () {
                //    Project.create(vm.project).then(function (response) {
                //        console.log(response);
                //        Materialize.toast('Yeah', 4000)
                //    });
                //
                //}
            }

        });

})();