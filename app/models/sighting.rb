class Sighting < ActiveRecord::Base

  belongs_to :critter


  def self.date_range(dates)
    self.where(:date => dates[:start_date]..dates[:end_date])
  end
end


