module Anial

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
    include InsanceMethods
  end
end

  module ClassMethods
    def acts_as_animal(params)
      class_eval <<-STUFF
        '#{params[:noise]}!'
      STUFF
    end
  end

  module InstanceMethods
    def generic_anial_thing
      'poop'
    end
  end
end

