'use strict'
 
angular.module 'aws-docker-test'
.config ($stateProvider) ->
  $stateProvider.state 'pets',
    url: '/pets'
    templateUrl: 'routes/pets/pets.html'
    controller: 'PetsCtrl'
    data:
      title: 'pets'
      auth: ['anon']