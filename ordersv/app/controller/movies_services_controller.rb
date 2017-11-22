class MovieServiceController < ApplicatoinController
  web_service_dispathcing_mode :layered
  web_service_scaffold         :invoke
  web_service                  :movies_service, MoviesService.new
end
