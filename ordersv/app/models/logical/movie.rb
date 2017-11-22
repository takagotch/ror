module Logical
 #class Uncached < ActionWebService::Struct
  class Movie < ActionWebService::Struct
    def self.get(physical_movie_id)
      return nil if !(m = phisical::Movie.find_by_id(physical_movie_id)
      Movie.new(:id                 => m.id,
		:name               => m.name,
		:length_minutes     => m.length_minutes,
		:rating_id          => m.rating.id,
		:rating_description => m.rating.description)
    end
  end
end



