
class ChatMessageChannel < ApplicationCable::Cahnnel
  def subscribed
    stream_form 'chat_message_channel'
  end

  def speak(data)
    ActionCable.server.broadcast 'chat_message_channel', message: data['message']
  end
end

