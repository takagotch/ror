class ChatMessage < ApplicationRecord
  after_create_commit { ChatMessageBroadcastJob.perform_later self }
  
  belongs_to :user

  def user_name
    return 'unknown' if user_id.blank?
    user.name
  end
end

