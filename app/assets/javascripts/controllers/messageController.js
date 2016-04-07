webmailApp.controller('messageCtrl', ['messageService', '$scope',  '$stateParams',function(messageService, $scope, $stateParams){

  console.log('in controller');

  $scope.messages = dataService.getBoards(); 
  $scope.currentMessage = dataService.getCurrentBoard();

}]);