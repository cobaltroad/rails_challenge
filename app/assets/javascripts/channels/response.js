$(function() {
  App.response = App.cable.subscriptions.create("ResponseChannel", {
    connected: function() {
      console.log("response connected")
    },
    disconnected: function() {},
    received: function(data) {
      console.log("response received", data);
      $('#efin').text(data.id_number)
    }
  });
})
