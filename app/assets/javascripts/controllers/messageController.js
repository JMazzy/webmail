
console.log('in controller file');

webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams', function(messageService, $scope, $stateParams){

  console.log('in controller');

  $scope.messages = messageService.getindex(); 
  $scope.currentMessage = messageService.getCurrentMessage();

}]);