'use strict'

angular.module 'aws-docker-test'
.controller 'PetCtrl', ($scope, $stateParams) ->
  $scope.pet = $scope.single 'pets', $stateParams