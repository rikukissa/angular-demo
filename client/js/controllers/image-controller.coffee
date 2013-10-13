module.exports = ($scope, $http, $routeParams) ->
  $http.get("/api/images/" + $routeParams.id)
    .success (image) ->
      $scope.image = image
