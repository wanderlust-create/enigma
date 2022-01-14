require './lib/shiftable'
require 'pry'

RSpec.describe 'Shiftable' do

  it 'can calculate the keys' do
    expect(Shiftable.calculate_keys('12345',0,1)).to eq(12)
  end

  it 'can square the date' do
    expect(Shiftable.square_me(130122)).to eq(16931734884)
  end

  it 'can calculate the offsets' do
    expect(Shiftable.calculate_offsets('130122',1)).to eq(8)
  end

  it 'can calculate the a_shift' do
    expect(Shiftable.a_shift('12345','130122')).to eq(20)
  end

  it 'can calculate the b_shift' do
    expect(Shiftable.b_shift('12345','130122')).to eq(20)
  end

  it 'can calculate the c_shift' do
    expect(Shiftable.c_shift('12345','130122')).to eq(20)
  end

  it 'can calculate the d_shift' do
    expect(Shiftable.d_shift('12345','130122')).to eq(20)
  end

end
