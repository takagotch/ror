module Logical

  class LineItem < ActionWebService::Struct
    member :product_id,            :integer
    member :quantity,              :integer
  end

  class Order < ActionWevService::Struct
    member :line_items,         :integer
  end

  class Address < ActionWebService::Struct
    member :line_1,               :string
    member :line_2,               :string
    member :city,                 :string
    member :state,                :string
    member :state,                :string
    member :zip_code,             :string
  end

  class CreditCard < ActionWebService::Struct
    AMERICAN_EXPRESS = 'american_express'
    MASTERCARD = 'master_card'
    VISA = 'visa'
    
    member :type,                    :string
    member :card_number              :string
    member :expiration_month,        :integer
    member :expiration_year,         :integer
  end

  class Payment < ActionWebService::Struct
    PAYPAL = 'paypal'
    PROMOTIONAL = 'promotional'
    CREDIT_CARD = 'credit_card'

    member :address,               Address
    member :type,                  :string
    member :credit_card,           CreditCard
  end

  class OrderPlaced < ActionWebService::Struct
    member :confirmation,          :string
    member :price,                 :int
  end
end


