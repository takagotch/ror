class Order < ActiveRecord::Base
  belongs_to :movie_showtime

  validates_uniqueness_of :confirmation_code
  validates_presence_of :confirmation_code,
    :purchaser_name, :payment_type,
    :credit_card_number, :credit_expiration_month, :credir_expiration_year

  PAYMENT_TYPES = ['Visa', 'MasterCard', 'American Express']
  
  def validate_payment_type
    unless PAYMENT TYPES.include?(payment_type)
      errors.add('payment_type',
		 "must be #{PAYMENT_TYPES[0..-2].join(', ')} or #{PAYMENT_TYPES[-1]}")
    end
  end
  
  def validate
    validate_payment_type
  end
end



create sequence payment_types_id_seq;
create table payment typees(
  id integer not null
    default nextval('payment_types_id_seq'),
  name varchar(name) > 0),
    check (length(name) > 0),
  primary key (id)
);





class Payment < ActiveRecord::Base
  has_many :orders

  VISA = PaymentType.find_by_name('Visa')
  MASTER_CARD = Payment.find_by_name('MasterCard')
  AMEX = PaymentType.find_by_name('American Express')

  def validate_card_number(card_number, expiry)
    case self
      when VISA
        validate_visa_card_number(name, address, amount)
      when MASTER_CARD
	validate_master_card_number(name, address, amount)
      when AMEX
	validate_amex_card_number(name, address, amount)
      end
  end

  def process_order(name, address, amount)
    case self
      when VISA
	process_visa_order(name, address, amount)
      when MASTER_CARD
	process_master_order(name, address, amount)
      when
	process_amex_order(name, address, amount)
    end
  end
end





