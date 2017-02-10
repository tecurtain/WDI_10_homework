App.game = App.cable.subscriptions.create "GameChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    $('#status').html("Waiting for an other player")

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # 5. In `game.coffee` implement two new cases in `data_received`, one for `user_typing` and for `user_stopped_typing`
    switch data.action
      when "game_start"
        $('#status').html("Player found")
        App.gamePlay = new Game('#game-container', data.msg)

      when "take_turn"
        App.gamePlay.move data.move
        App.gamePlay.getTurn()

      when "new_game"
        App.gamePlay.newGame()

      when "user_typing"
        $('#user_type_status').html("Opponent is typing ...")

      when "user_stopped_typing"
        $('#user_type_status').html("")

      when "opponent_withdraw"
        $('#status').html("Opponent withdraw, You win!")
        $('#new-match').removeClass('hidden');

      when "receive_message"
        liElement = document.createElement('p');
        spanElement = document.createElement('span');
        if (data.self)
          liElement.classList.add('self');
        else
          liElement.classList.add('other');
        $('#usermsg').html(data.message)
        spanElement.textContent = data.msg.data;
        liElement.appendChild(spanElement)
        $('#chatbox').append(liElement)

        $textarea = $('#chatbox');
        $textarea.scrollTop($textarea[0].scrollHeight);

# game.coffee` implement two new methods that sends a message like 'user_typing' and `user_stopped_typing`

  user_typing: () ->
    @perform 'user_typing'

  user_stopped_typing: () ->
    @perform 'user_stopped_typing'

  send_message: (message) ->
    @perform 'send_message', data: message

  take_turn: (move) ->
    @perform 'take_turn', data: move

  new_game: () ->
    @perform 'new_game'
