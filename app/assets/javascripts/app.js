
var webmailApp = angular.module("webmailApp", ['ui.router', 'Devise', 'restangular'] );


webmailApp.config(['$urlRouterProvider', '$stateProvider', 'RestangularProvider', 'AuthProvider',
  function($urlRouterProvider, $stateProvider, RestangularProvider, AuthProvider){

     RestangularProvider.setBaseUrl('/api/v1');
     RestangularProvider.setRequestSuffix('.json');
     RestangularProvider.setDefaultHttpFields({
         "content-type": "application/json"
     });


   $stateProvider
      .state('messages', {
        url: '/messages',
        templateUrl: '/templates/indexLayout.html',
        controller: 'messageCtrl',
        resolve: {
          currentUser: ['Auth', function(Auth) {
          return Auth.currentUser();
          }],

        }
      })

    $urlRouterProvider.otherwise('/messages');

 }]);

webmailApp.run(function($rootScope, $location, Auth){
 $rootScope.$on("$stateChangeError", console.log.bind(console));
});