angular = require 'angular'
ngRoute = require 'route'

module = angular.module 'main-app', ['ngRoute']

listController = require './controllers/list-controller.coffee'

module.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->

  $locationProvider.html5Mode true

  $routeProvider
    .when '/',
      templateUrl: '/partials/main/index.html'
      controller: listController
    .when '/404',
      templateUrl: '/partials/not-found/index.html'

    .otherwise
      redirectTo: '/404'
]
