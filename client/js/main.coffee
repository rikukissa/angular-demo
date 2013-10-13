angular = require 'angular'
ngRoute = require 'route'

module = angular.module 'main-app', ['ngRoute']

module.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->

  $locationProvider.html5Mode true

  $routeProvider
    .when '/',
      templateUrl: '/partials/main/index.html'

    .when '/404',
      templateUrl: '/partials/not-found/index.html'

    .otherwise
      redirectTo: '/404'
]
