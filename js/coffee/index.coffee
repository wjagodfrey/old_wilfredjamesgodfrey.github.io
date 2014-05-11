root = @

app = angular.module 'app', ['ngSanitize']

app.directive 'wgMainMenu', [
  ->
    restrict: 'AEC'
    templateUrl: "/templates/wgMainMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig
]


angular.bootstrap root.document.body, ["app"]