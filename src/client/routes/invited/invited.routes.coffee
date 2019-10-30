'use strict'

angular.module 'aws-docker-test'
.config ($stateProvider) ->
  $stateProvider.state 'invited',
    url: '/invite/:code'
    templateUrl: 'routes/invited/invited.html'
    controller: 'InvitedCtrl'