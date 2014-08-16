// Generated by CoffeeScript 1.7.1
(function() {
  var app, root;

  this.wgMenuConfig = [
    {
      name: 'Space Joust',
      url: 'spaceJoust',
      description: '*WIP* Multiplayer thumbwrestling(?) with lasers, in space.',
      hint: '<strong>Alien:</strong> WSAD & G | <strong>Human:</strong> Arrow Keys & /<br/> Land on your opponent\s head for maximum damage.',
      img: 'spaceJoust.png'
    }, {
      name: 'Hector',
      url: 'hector',
      description: 'A 3Dish pixelart head, and some buttons. What do they do?',
      hint: 'Play with the buttons, you\'ll figure it out.<br/><small>Featuring a nearly infinite number of unique blinks!</small>',
      img: 'hector.png'
    }, {
      name: 'Sprite Breaker',
      url: 'spriteBreaker',
      description: 'A tool for splitting spritesheets and injecting them into projects.',
      hint: 'Click the  "?" button for a quick start guide.',
      img: 'spriteBreaker.png'
    }, {
      name: 'Sombrero',
      url: 'sombrero',
      description: 'A 2.5D pixel art animation test.',
      hint: 'Use the arrow keys to move.',
      img: 'sombrero.png'
    }
  ];

  root = this;

  app = angular.module('bodyApp', ['ngSanitize']);

  app.directive('onLoad', [
    function() {
      return {
        restrict: 'AEC',
        scope: {
          onLoad: '&'
        },
        link: function(scope, element, attrs) {
          return element.on('load', function(e) {
            return scope.$apply(function() {
              return scope.onLoad();
            });
          });
        }
      };
    }
  ]);

  app.directive('wgMainMenu', [
    function() {
      return {
        restrict: 'AEC',
        templateUrl: "/templates/wgMainMenu.html",
        replace: true,
        link: function(scope, element, attrs) {
          scope.menuConfig = root.wgMenuConfig;
          return scope.loadingCount = scope.menuConfig.length;
        }
      };
    }
  ]);

}).call(this);
