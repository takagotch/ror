module MyModule
  module ClassMethods
    def acts_as_my_module(params)
      class_eval <<-DELIM
        def some_method
	end
      DELIM
    end
  end
  
  module
  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end
end




