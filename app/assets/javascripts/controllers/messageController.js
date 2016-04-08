webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams', '$sce', '$mdDialog', '$window', function(messageService, $scope, $stateParams, $sce, $mdDialog, $window ){

  $scope.messages = messageService.getMessages();

  if( $stateParams.id ){
    messageService.updateCurrentMessage( $stateParams.id );
  }

  $scope.currentMessage = messageService.getCurrentMessage();

}]);
