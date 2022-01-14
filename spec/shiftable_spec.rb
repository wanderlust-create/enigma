require './lib/shiftable'
require 'pry'

RSpec.describe 'Shiftable' do

  it 'can calculate the keys' do
    expect(Shiftable.calculate_keys('12345',2,3)).to eq(34)
  end

  it 'can square the date' do
    expect(Shiftable.square_me(130122)).to eq(16931734884)
  end

  it 'can calculate the offsets' do
    expect(Shiftable.calculate_offsets('123456',3)).to eq(6)
  end

end
