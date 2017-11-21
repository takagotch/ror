
class Payment < ActiveRecord::Base
  has_many :orders
  VISA = PaymentType.find_by_type('Visa')
  MASTER_CARD = PaymentType.find_by_type('MasterCard')
  AMEX = PaymentType.find_by_type('AmericanExpress')

  def validate_card_number(card_number, expiry)
    raise "This method must be redefined in the subclass"
  end

  def process_order(name, address, amount)
    raise "This method must be redefined in the subclass"
  end
end




class AmericanExpress < PaymentType
  def validate_card_number(card_number, expiry)
    //card_number
  end

  def process_order(name, address, amount)
    //process
  end
end


>> PaymentType::VISA
>> PaymentType::MASTER_CARD
>> PaymentType::AMEX


class Order < ActiveRecord::Base
  def validate_credit_card_number
  unless self.payment_type.validate_card_number(
    credit_card_number,
    credit_expiration_month,
    credit_expiration_year)
    errors.add('credit_card_number', 'is invalid')
  end

  def validate
    validate_credit_card_number
  end
end



