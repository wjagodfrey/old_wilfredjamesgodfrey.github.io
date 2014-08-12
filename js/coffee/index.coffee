root = @

app = angular.module 'bodyApp', ['ngSanitize']

app.directive 'onLoad', [
  ->
    restrict: 'AEC'
    scope:
      onLoad: '&'
    link: (scope, element, attrs) ->
      # console.log element, scope.onLoad()
      element.on 'load', (e) ->
        scope.$apply ->
          scope.onLoad()
]

app.directive 'wgMainMenu', [
  ->
    restrict: 'AEC'
    templateUrl: "/templates/wgMainMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig
      scope.loadingCount = scope.menuConfig.length
]