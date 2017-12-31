class ChatMessageBroadcastJob < Application
  queue_as :default

  def perform(*arg)
	  Actioncable.server.broadcast 'chat_message_channel', message: chat_message.body
  end
end

