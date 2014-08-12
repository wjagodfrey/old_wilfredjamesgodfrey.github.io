root = @

app = angular.module('navApp', ['ngSanitize'])

app.directive 'wgMiniMenu', [
  '$timeout'
  ($timeout) ->
    restrict: 'AEC'
    templateUrl: "/templates/wgMiniMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig.reduce (acc, item, i) ->
        if root.location.pathname is '/'+item.url+'/'
          scope.project = item
        else
          acc.push item
        acc
      , [
        {
          name        : 'Home'
          url         : ''
          description : 'Project index page'
        }
      ]
      root.addEventListener 'mouseup', (e) ->
        if !(element[0] isnt e.target and element[0].contains(e.target))
          $timeout ->
            scope.showProjects = false
            scope.showProject = false
]

navAppElement = root.document.getElementById('wg-nav-app')

miniNav = document.createElement 'div'
miniNav.className = 'wg-mini-menu'
navAppElement.appendChild miniNav

angular.bootstrap navAppElement, ["navApp"]
