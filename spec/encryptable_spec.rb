require 'pry'
require './lib/encryptable'

RSpec.describe 'Encryptable' do

  # it 'can read array positions' do
  #
  it 'can create a message array' do
    expected = ["i", " ", "a", "m", " ", "l", "o", "v", "e", "d", "3"]
    expect(Encryptable.meassage_array("<i am loved3\n")).to eq(expected)
  end
  #   expect(Encryptable.shift_position(19, 66).to eq('d')
  # end

  it 'can shift a position by argument spaces' do
    expect(Encryptable.shift_position(8,3)).to eq(11)
    expect(Encryptable.shift_position(5,27)).to eq(5)
    expect(Encryptable.shift_position(12,73)).to eq(4)
    expect(Encryptable.shift_position(12,20)).to eq(5)
    expect(Encryptable.shift_position(15,3)).to eq(18)
    expect(Encryptable.shift_position(27,27)).to eq(27)
    expect(Encryptable.shift_position(23,73)).to eq(15)
    expect(Encryptable.shift_position(15,20)).to eq(8)
    expect(Encryptable.shift_position(18,3)).to eq(21)
    expect(Encryptable.shift_position(12,27)).to eq(12)
    expect(Encryptable.shift_position(4,73)).to eq(23)

  end

end
