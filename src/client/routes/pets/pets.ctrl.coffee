'use strict'

angular.module 'aws-docker-test'
.controller 'PetsCtrl', ($scope, Sorter) ->
  $scope.pets = $scope.list 'pets',
    page: 1
    pageSize: 10
  $scope.pets.sort = Sorter.create $scope.pets.args