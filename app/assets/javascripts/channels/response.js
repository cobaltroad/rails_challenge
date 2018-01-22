$(function() {
  App.response = App.cable.subscriptions.create("ResponseChannel", {
    connected: function() {
      console.log("response connected")
    },
    received: function(data) {
      console.log("RECEIVED", data);
      $('#efin').text(data.id_number)
    }
  });
})
