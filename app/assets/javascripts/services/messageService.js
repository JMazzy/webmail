
webmailApp.factory('messageService', ['Restangular', function(Restangular){

    var obj = {};
    var _messages = [];
    var _currentMessage;

    obj.getindex = function(){
        console.log('in service');
        Restangular.all("messages").getList().then(function(data){
            _messages = data;
        });
        _currentMessage = _messages[0];
    };

    obj.getCurrentMessage = function(){
        return _currentMessage;
    }

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