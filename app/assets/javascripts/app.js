
var webmailApp = angular.module("webmailApp", ['ui.router', 'Devise', 'restangular'] );


webmailApp.config(['$urlRouterProvider', '$stateProvider', 'RestangularProvider', 'AuthProvider',
  function($urlRouterProvider, $stateProvider, RestangularProvider, AuthProvider){

     RestangularProvider.setBaseUrl('/api/v1');
     RestangularProvider.setRequestSuffix('.json');
     RestangularProvider.setDefaultHttpFields({
         "content-type": "application/json"
     });


   $stateProvider
      .state('board', {
        url: '/board',
        templateUrl: '/templates/indexLayout.html',
        controller: 'BoardCtrl',
        resolve: {
          currentUser: ['Auth', function(Auth) {
          return Auth.currentUser();
          }],

        }
      })
 }]);

webmailApp.run(function($rootScope, $location, Auth){
 $rootScope.$on("$stateChangeError", console.log.bind(console));
  });