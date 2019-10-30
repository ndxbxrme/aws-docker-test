'use strict'

angular.module 'aws-docker-test'
.controller 'UsersCtrl', ($scope, Sorter) ->
  $scope.users = $scope.list 'users',
    page: 1
    pageSize: 10
  $scope.users.sort = Sorter.create $scope.users.args