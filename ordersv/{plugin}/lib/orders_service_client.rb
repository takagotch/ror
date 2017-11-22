require 'signleton'
class OrdersServiceClient
  include Singleton

  def initialize
   @client = ActionWebService::Client::XmlRpc.new(
     OrdersApi, ENDPOINT_URL,
     {:handler_name => 'orders', :timeout => TIMEOUT_SECONDS}
   )
  end

  def self.method_missing(method, *args)
    self.instance.senf(method, *args)
  end

  def method_missing(method, *args)
    @clinet.send(method, *args)
  end
end


