require './lib/enigma'
require 'pry'

RSpec.describe 'Enigma' do
  let(:encrypt) {Enigma.new('02715','040895')}

  xit 'exists' do
    expect(encrypt).to be_a Enigma
  end

  xit 'can read the message to be encrypted' do

    expected = (String)

    expect(encrypt.message.class).to eq(String)
  end

  xit 'can generate random 10 digit number as string' do

    expect(encrypt.generate_key.size).to eq(5)
  end

  # it'can generate time as DDMMYY' do

    # expect(encrypt.date_code.size).to eq(6)
  # end

  it 'can calculate the shifts' do

  expected = [3, 27, 73, 20]
  expect(encrypt.shifts).to eq(expected)
end 



  it 'can encrypt' do

    expected = ('keder, ohulw!')
    expect(encrypt.encrypt_now).to eq(expected)
  end
end
