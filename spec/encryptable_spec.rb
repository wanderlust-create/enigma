require 'pry'
require './lib/encryptable'
require './lib/enigma'

RSpec.describe 'Encryptable' do
  let(:encrypt) {Enigma.new('12345','130122')}

  it 'can generate the letter array' do
    expected = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
    expect(encrypt.letter_array).to eq(expected)
  end

  it 'can shift a position by argument spaces' do
    expect(encrypt.shift_position(8,3)).to eq(11)
    expect(encrypt.shift_position(5,27)).to eq(5)
    expect(encrypt.shift_position(12,73)).to eq(4)
    expect(encrypt.shift_position(12,20)).to eq(5)
    expect(encrypt.shift_position(15,3)).to eq(18)
    expect(encrypt.shift_position(27,27)).to eq(27)
    expect(encrypt.shift_position(23,73)).to eq(15)
    expect(encrypt.shift_position(15,20)).to eq(8)
    expect(encrypt.shift_position(18,3)).to eq(21)
    expect(encrypt.shift_position(12,27)).to eq(12)
    expect(encrypt.shift_position(4,73)).to eq(23)

  end

  it 'can return a shifted letter' do
    expect(encrypt.shift('h', 3)).to eq('k')
    expect(encrypt.shift('v', 27)).to eq('v')
  end

it 'can encrypt a message' do
    expected = ('keder, ohulw!')
    expect(encrypt.encrypt_message('hello, world!')).to eq(expected)
  end
end
