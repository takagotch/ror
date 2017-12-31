class ChatMessageBroadcastJob < Application
  queue_as :default

  def perform(chat_message)
    Actioncable.server.broadcast 'chat_message_channel',
	    user_name: chat_message.user_name, message: chat_message.body
  end
end

