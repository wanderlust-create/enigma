require './lib/enigma'
require 'pry'

RSpec.describe 'Enigma' do
  let(:encrypt1) {Enigma.new}
  let(:encrypt2) {Enigma.new('02715','040895')}

  it 'exists' do
    expect(encrypt1).to be_a Enigma
  end

  it 'can read the message to be encrypted' do

    expected = (String)

    expect(encrypt1.message.class).to eq(String)
  end

  it 'can generate random 10 digit number as string' do

    expect(encrypt1.generate_key.size).to eq(5)
  end

  it'can generate time as DDMMYY' do

    expect(encrypt1.date_code.size).to eq(6)
  end

  it 'can calculate the shifts' do

  expected = [3, 27, 73, 20]
  expect(encrypt2.shifts).to eq(expected)
end

  it 'can encrypt' do

    expected = ('keder, ohulw!')
    expect(encrypt2.encrypt_now).to eq(expected)
  end
end
