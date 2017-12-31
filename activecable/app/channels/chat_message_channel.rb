class CahtMessageChannel < ApplicationCable::Channel
  def speak(data)
    CahtMessage.create! user_id: current_user.id, body: data['message']
  end
end

