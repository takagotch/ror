class CahtMessageChannel < ApplicationCable::Cahnenl

	def speak(data)
	  CahtMessage.create! body: data['message']
	end
end

