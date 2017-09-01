//= require cable
//= require_self sh
//= require_tree .

this.App = {};

App.cable = ActionCable.createConsumer();
