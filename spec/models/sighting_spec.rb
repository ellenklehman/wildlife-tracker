require 'rails_helper'

describe Sighting do
  describe '.date_range' do
    it 'returns sightings for a given range of dates' do
      sighting1 = Sighting.create({:critter_id =>1, :date=> '2014-08-08'})
      sighting2 = Sighting.create({:critter_id =>1, :date=> '2014-08-09'})
      sighting3 = Sighting.create({:critter_id =>1, :date=> '2014-08-10'})
      expect(Sighting.date_range({:start_date=> '2014-08-09', :end_date=>'2014-08-10'})).to eq [sighting2, sighting3]
    end
  end
end
