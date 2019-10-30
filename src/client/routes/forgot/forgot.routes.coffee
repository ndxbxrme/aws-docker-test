'use strict'

angular.module 'aws-docker-test'
.config ($stateProvider) ->
  $stateProvider.state 'forgot',
    url: '/forgot'
    templateUrl: 'routes/forgot/forgot.html'
    controller: 'ForgotCtrl' 
  $stateProvider.state 'forgotResponse',
    url: '/forgot/:token'
    templateUrl: 'routes/forgot/forgot.html'
    controller: 'ForgotCtrl'  