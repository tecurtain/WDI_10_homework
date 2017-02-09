# Tic Tac Toe

Tic Tac Toe made in Rails 5 and Action Cable

[Read](http://cookieshq.co.uk/posts/tic-tac-toe-game-in-rails-5-with-action-cable/) our blog post about how this was made using Action Cable in Rails 5


## TODO

In game.coffee

1) Implement a method "send_message" which takes one argument, a message, and calls @perform

@perform 'send_message', data: msg

2) In @received, in the switch statement, implement a case that gets `receive_message` and appends the data to our UI

In game.js

This is where you'll implement the event listeners for submitting a message

1) Attach an event listener to your submit button, and in the event handler call

App.game.send_message($('#usermsg').val());

At this stage, we are sending messages to our websocket server (but it doesn't know how to respond...yet)

In channels/game_channel.rb implement a method called 'send_message'

send_message(uuid, data)
  opponent = Game.opponent_for(uuid)
  ActionCable.server.broadcast opponent, {action: "receive_message", msg: data}
