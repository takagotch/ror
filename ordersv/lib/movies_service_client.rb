require 'singleton'
class MoviesServiceClient
  include Singleton

  def initialize
    @client = ActionWebService::Client::XmlRpc.new(
      MoviesApi, ENDPOINT_URL, {:handler_name => 'movies', :timeout => TIMEOUT_SECONDS}
    )
  end

  def method_missing(method, *args)
    result = @client.send(method, *args)
    result
  end

  def self.method_missing(method, *args)
    self.instance.send(method, *args)
  end
end


