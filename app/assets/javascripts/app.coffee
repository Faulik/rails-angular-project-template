window.app = angular.module('app', [
  'ui.router',
  'templates',
  'rails',
  'ngSanitize',
  'appResource',
  'angularUtils.directives.dirPagination'
]).run [ "$rootScope", ($rootScope) ->

]