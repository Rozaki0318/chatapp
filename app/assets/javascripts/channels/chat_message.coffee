App.chat_message = App.cable.subscriptions.create "ChatMessageChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#chat_messages').append '<div style="display: inline-block; background: white; border-bottom: solid 2px #FFC107; border-radius: 1px;">' + data['message'] + '</div>' + '<br/>'

  speak: (message) ->
    @perform 'speak', message: message