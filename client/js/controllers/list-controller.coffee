module.exports = ($scope, $http) ->

  $http.get('/api/images').success (images) ->
    $scope.images = images

  $scope.images = []

