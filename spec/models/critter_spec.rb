require 'rails_helper'

describe Critter do
  it {should validate_presence_of :name}
  it {should have_many :sightings}
end
