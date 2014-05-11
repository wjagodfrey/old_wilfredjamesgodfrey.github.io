root = @

app = angular.module('navApp', [])

app.directive 'wgMiniMenu', [
  ->
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
]

navAppElement = root.document.getElementById('wg-nav-app')
console.log navAppElement

miniNav = document.createElement 'div'
miniNav.className = 'wg-mini-menu'
navAppElement.appendChild miniNav

angular.bootstrap navAppElement, ["navApp"]
