webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams', function(messageService, $scope, $stateParams){

  $scope.messages = messageService.getMessages(); 
  $scope.currentMessage = messageService.getCurrentMessage();

}]);