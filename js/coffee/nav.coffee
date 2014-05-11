root = @

app = angular.module 'navApp', []


app.directive 'wgMiniMenu', [
  ->
    restrict: 'AEC'
    templateUrl: "/templates/wgMiniMenu.html"
    replace: true
    link: (scope, element, attrs) ->
      scope.menuConfig = root.wgMenuConfig.reduce (acc, item, i) ->
        if root.location.pathname is '/'+item.url
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

miniNav = document.createElement 'div'
miniNav.className = 'wg-mini-menu'
root.document.body.appendChild miniNav

app.run [
  '$rootElement'
  (element) ->
    console.log element
]