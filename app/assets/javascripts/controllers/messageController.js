

webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams', function(messageService, $scope, $stateParams){

  console.log('in controller');

  $scope.messages = messageService.getMessages(); 
  console.log( $scope.messages );
  $scope.currentMessage = messageService.getCurrentMessage();
  console.log( $scope.currentMessage );

}]);