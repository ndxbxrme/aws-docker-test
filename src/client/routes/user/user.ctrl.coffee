'use strict'

angular.module 'aws-docker-test'
.controller 'UserCtrl', ($scope, $stateParams) ->
  $scope.user = $scope.single 'users', $stateParams