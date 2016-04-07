
console.log('in angular setup file');

var webmailApp = angular.module("webmailApp", ['ui.router', 'restangular'] );

console.log('tetris');

webmailApp.config(['$urlRouterProvider', '$stateProvider', 'RestangularProvider',
  function($urlRouterProvider, $stateProvider, RestangularProvider){

    console.log('in angular config');

     RestangularProvider.setBaseUrl('/api/v1');
     RestangularProvider.setRequestSuffix('.json');
     RestangularProvider.setDefaultHttpFields({
         "content-type": "application/json"
     });


   $stateProvider
      .state('messages', {
        url: '/messages',
        templateUrl: '/templates/indexLayout.html',
        controller: 'messageCtrl'
      })

    $urlRouterProvider.otherwise('/messages');

}]);

webmailApp.run(function($rootScope, $location){
 $rootScope.$on("$stateChangeError", console.log.bind(console));
});

// $rootScope.$on('$stateChangeError', 
// function(event, toState, toParams, fromState, fromParams, error){ 
//         // this is required if you want to prevent the $UrlRouter reverting the URL to the previous valid location
//         event.preventDefault();
//         ... 
// })