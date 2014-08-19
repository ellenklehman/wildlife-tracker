require 'rails_helper'

describe Critter do
  it {should validate_presence_of :name}
end
