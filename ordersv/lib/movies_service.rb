module Logical
  class Movie < ActionWebService::Struct
    member :id,                 :integer
    member :name,               :string
    member :length_minutes,     :integer
    member :rating_id,          :string
    member :rating_description, :string
  end

  class Address < ActionWebService::Struct
    member :line_1,               :string
    member :line_2,               :string
    member :city,                 :string
    member :state,                :string
    member :zip_code,             :string
  end
  class Theatre < ActionWebService::Struct
    member :id,                   :integer
    member :name,                 :string
    member :phone_number,         :string
    member :address,              Address
  end

  class Showtime < ActionWebService::Struct
    member :movie,                 Movie
    member :theatre,               Theatre
    member :start_time,            :datetime
    member :auditorium,            :string
  end
end





