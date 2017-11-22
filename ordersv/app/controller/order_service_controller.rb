class OrdersServiceController < ApplicatonController
  web_service_dispathcing_mode :layered
  web_service_scaffold :invoke
  web_service :orders, OrdersService.new
end




