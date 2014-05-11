root = @

app = angular.module 'app', ['ngSanitize']

app.controller 'homeNav', [
  '$scope'
  (scope) ->
    console.log scope
]

app.directive 'wgMainMenu', [
  ->
    restrict: 'AEC'
    templateUrl: "./templates/wgMainMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig
]