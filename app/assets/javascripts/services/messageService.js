webmailApp.factory('messageService', ['Restangular', function(Restangular){

    var obj = {};
    var _messages = [];
    var currentMessage;

    obj.getindex = function(){
        Restangular.all("messages").getList().then(function(data){
            _messages = data;
        });
        currentMessage = _messages[0];
    };

    obj.show = function( id ) {
      return Restangular.one( "messages", id).get();
    };

    obj.update = function( messageObj ){
      messageObj.put();
    };

    obj.create = function ( messageObj ) {
      return Restangular.all( "messages").post( messageObj );
    };

    obj.destroy = function ( id ) {
        Restangular.one("messages", id).remove();
    };

    return obj;
}]);