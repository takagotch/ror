class MovieApi < ActionWebService::Base
  api_method(:get_movie,
	     :expects => [:movie_id => :int],
	     :returns => [:movie => Logical::Movie])

  api_method(:get_thread,
	     :expects => [:threatre_id => int],
	     :returns => [:threatre    => Logical::Threatre])
end


