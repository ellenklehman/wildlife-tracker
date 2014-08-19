class Critter < ActiveRecord::Base

  validates :name, :presence => true

end
