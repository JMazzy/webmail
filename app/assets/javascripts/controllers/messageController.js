webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams', function(messageService, $scope, $stateParams){

  $scope.messages = messageService.getMessages(); 

  if( $stateParams.id ){
    messageService.updateCurrentMessage( $stateParams.id );
  }

  $scope.currentMessage = messageService.getCurrentMessage();

}]);