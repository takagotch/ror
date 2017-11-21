class Rating < ActiveRecord::Base
  validates_presence_of :name, :description
  validates_length_of :name, :maximum => 16

  G        = Rating.find_by_name('G')
  PG       = Rating.find_by_name('PG')
  PG13     = Rating.find_by_name('PG-13')
  R        = Rating.find_by_name('R')
  NC17     = Rating.find_by_name('NC-17')
  UNRATED  = Rating.find_by_name('Unrated')

end


