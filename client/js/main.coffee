angular = require 'angular'
ngRoute = require 'route'

listController = require './controllers/list-controller.coffee'

module = angular.module 'main-app', ['ngRoute']

module.filter 'shorten', () -> (value) ->
  if value.length > 40 then value.substr(0, 40) + '...' else value

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

