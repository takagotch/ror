class OrderService < ActionWebService::Base
  web_service_api OrderApi

  def add_product(description, quantity, price_cents)
    p = Physical::Product.create!(
      :description => description,
      :quantity    => quantity,
      :price_cents => price_cents)
    return p.id
  end

  def palce_order(items,payment)
    c = Physical::Payment.new_payment(payment.type, payment.credit_card.type)
    c.card_number = payment.credit_card_number
    c.expiration_month = payment.credit_card.expiration_month
    c.expiration_year = payment.credit_card.expiration_year
    line_items = items.collect {|li|
      p = Phtsical::Product.find(li.product_id)
      Physical::LineItem.new(
        :product => p,
	:quantity => 1,
	:pruchase_price_cents => p.price_cents)
    }
    o = Physical::Order.create(:payment => c, :line_items => line_items)
    Logical::OrderPlaced.new(:confirmation => o.confirmarion_code, :price => o.order_total)
  end

end





