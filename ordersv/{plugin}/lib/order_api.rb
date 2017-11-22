class OrdersApi < ActionWebService::API::Base
  
  api_method(:add_product,
	     :expects => [{:description => :string},
                          {:quantity    => :int},
                          {:price_cents => :int},
             :returns =>  [:product_id  => :string])
  
  api_method(:place_order,
	     :expects => [{:items       => [Logical::LineItem]},
                          {:payment     => Logical::Payment}],
	     :returns => [Logical::OrderPlaced])
end







