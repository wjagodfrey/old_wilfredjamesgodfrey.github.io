// Generated by CoffeeScript 1.7.1
(function() {
  var app, root;

  this.wgMenuConfig = [
    {
      name: 'Hector',
      url_suffix: 'hector',
      description: 'A 3Dish, pixelartish head with an attitude',
      img_src: 'hector.png'
    }, {
      name: 'Sprite Breaker',
      url_suffix: 'spriteBreaker',
      description: 'A tool for splitting spritesheets and injecting them into projects',
      img_src: 'spriteBreaker.png'
    }, {
      name: 'Sombrero',
      url_suffix: 'sombrero',
      description: 'A 2.5D pixel art test',
      img_src: 'sombrero.png'
    }
  ];

  root = this;

  app = angular.module('app', ['ngSanitize']);

  app.controller('homeNav', [
    '$scope', function(scope) {
      return console.log(scope);
    }
  ]);

  app.directive('wgMainMenu', [
    function() {
      return {
        restrict: 'AEC',
        templateUrl: "./templates/wgMainMenu.html",
        replace: true,
        link: function(scope, element, attrs) {
          return scope.menuConfig = root.wgMenuConfig;
        }
      };
    }
  ]);

}).call(this);
