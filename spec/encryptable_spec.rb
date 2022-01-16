require 'pry'
require './lib/encryptable'

RSpec.describe 'Encryptable' do
  let(:array) {["<", "i", " ", "a", "m", " ", "l", "o", "v", "e", "d", "3"]}

  it 'can create a message array' do
    expected = ["<", "i", " ", "a", "m", " ", "l", "o", "v", "e", "d", "3"]
    expect(Encryptable.meassage_array("<i am loved3\n")).to eq(expected)
  end

  xit 'can shift a position by argument spaces' do
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

  it 'can create a hashed index from the message array' do

    # array = ["i", " ", "a", "m", " ", "l", "o", "v", "e", "d", "3"]

    expected = {
      0 => "i",
      1 => " ",
      2 => "a",
      3 => "m",
      4 => " ",
      5 => "l",
      6 => "o",
      7 => "v",
      8 => "e",
      9 => "d",
      10 => "3"
    }

    expect(Encryptable.message_hash(array)).to eq(expected)
  end

end
