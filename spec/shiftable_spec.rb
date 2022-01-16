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
    expect(Shiftable.calculate_offsets('130122',0)).to eq(4)
  end

  it 'can calculate the a_shift' do
    expect(Shiftable.a_shift('12345','130122')).to eq(16)
  end

  it 'can calculate the b_shift' do
    expect(Shiftable.b_shift('12345','130122')).to eq(31)
  end

  it 'can calculate the c_shift' do
    expect(Shiftable.c_shift('12345','130122')).to eq(42)
  end

  it 'can calculate the d_shift' do
    expect(Shiftable.d_shift('12345','130122')).to eq(49)
  end

  it 'can generate the a_shift' do
    expect(Shiftable.a_shift('02715', '040895')).to eq(3)
  end

  it 'can generate the b_shift' do
    expect(Shiftable.b_shift('02715', '040895')).to eq(27)
  end

  it 'can generate the c_shift' do
    expect(Shiftable.c_shift('02715', '040895')).to eq(73)
  end

  it 'can generate the d_shift' do
    expect(Shiftable.d_shift('02715', '040895')).to eq(20)
  end



end
