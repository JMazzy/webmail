webmailApp.factory('messageService', ['Restangular', function(Restangular){

    var obj = {};
    _messages = [];

    obj.getindex = function(){
        var idx = Restangular.all("messages").getList().then(function(data){
            _messages = data;
        });
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