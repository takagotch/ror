module Logical
  class Theatre < ActionWebService::Struct
  
    def Theatre.get(theatre_id)
      p_t = Physical::Theatre.find(theatre_id)
      a = Logical::Address.new(
        :line_one => p_t.line_1,
        :line_two => p_t.line_2,
        :city     => p_t.city,
        :state    => p_t.state,
        :zip_code => p_t.zipcode)
      Logical::Threatre.new(
        :id           => p_t.id,
        :name         => p_t.name,
        :phone_number => p_t.phone_number,
        :address      => a)
    end
  end
end
