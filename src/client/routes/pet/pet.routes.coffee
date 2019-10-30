'use strict'

angular.module 'aws-docker-test'
.config ($stateProvider) ->
  $stateProvider.state 'pet',
    url: '/pet/:_id'
    templateUrl: 'routes/pet/pet.html'
    controller: 'PetCtrl'
    data:
      title: 'pet'
      auth: ['anon']