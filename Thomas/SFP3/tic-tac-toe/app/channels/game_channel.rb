# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class GameChannel < ApplicationCable::Channel
  def subscribed
     stream_from "player_#{uuid}"
     Match.create(uuid)
  end

  def unsubscribed
    Game.withdraw(uuid)
    # Remove yourself from the waiting list
    Match.remove(uuid)
  end

  def take_turn(data)
    Game.take_turn(uuid, data)
  end

  def new_game()
    Game.new_game(uuid)
  end

  def user_typing
    opponent = Game.opponent_for(uuid)
    ActionCable.server.broadcast "player_#{opponent}", {action: "user_typing"}
  end

  def user_stopped_typing
    opponent = Game.opponent_for(uuid)
    ActionCable.server.broadcast "player_#{opponent}", {action: "user_stopped_typing"}
  end

  def send_message(data)
    opponent = Game.opponent_for(uuid)
    ActionCable.server.broadcast "player_#{opponent}", {action: "receive_message", msg: data, self: false}
    ActionCable.server.broadcast "player_#{uuid}", {action: "receive_message", msg: data, self: true}
  end
end


# 4. In `GameChannel` implement two corresponding methods that broadcast a message to `opponent`
