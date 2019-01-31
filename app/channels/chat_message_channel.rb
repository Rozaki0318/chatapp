class ChatMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_message_channel' #'chat_message_channel'に接続したクライアントにメッセージを配信
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'chat_message_channel', message: data['message']
  end
end
