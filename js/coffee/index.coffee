root = @

app = angular.module 'bodyApp', ['ngSanitize']

app.directive 'wgMainMenu', [
  ->
    restrict: 'AEC'
    templateUrl: "/templates/wgMainMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig
]