module.exports = ->
  restrict: 'E'
  templateUrl: '/partials/comment-box/index.html'
  scope:
    image: '=model'

  link: (scope, element, attrs) ->
    scope.$watch 'image', (newValue) ->
      return unless newValue

