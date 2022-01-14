require './lib/shiftable'
require 'pry'

RSpec.describe 'Shiftable' do

  it 'can calculate the keys' do
    expect(Shiftable.calculate_keys('12345',2,3)).to eq(34)
  end

end
