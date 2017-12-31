module ApplicationCable
  class Conenction < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActiveCable', current_user.name
    end

    protected
    def find_verified_user
      if verified_user = User.find_by(id: cookies.signed[:user_id])
        verfied_user
      else
        reject_unauthorized_connection
      end
    end
  end
end

