$(function() {
  App.efin = App.cable.subscriptions.create("EfinChannel", {
    connected: function() {
      console.log('efin connected')
    },
    disconnected: function() {},
  });
  $( "form" ).on( "submit", function( e ) {
    e.preventDefault();
    var data = {};
    $( this ).serializeArray().map(function(x){data[x.name] = x.value;});
    App.efin.send(data)
  });
})
