module Physical
  module Orders
    class Order < ActiveRecord::Base
      belongs_to :movie, :class_name => '::Physical::Movies::Movie'
    end
  end
end


