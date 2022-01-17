require './lib/enigma'
require 'pry'

RSpec.describe 'Enigma' do
  let(:enigma) {Enigma.new}

  it 'exists' do

    expect(enigma).to be_a Enigma
  end

  it 'will create an encrypt output' do
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
  expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can read the message to be encrypted' do

    output = enigma.encrypt()

    expected = (String)

    expect(output[:encryption].class).to eq(String)
  end

  it 'can generate random 10 digit number as string' do

    output = enigma.encrypt()

    expect(output[:key].size).to eq(5)
  end

  it'can generate time as DDMMYY' do

    output = enigma.encrypt()
    expect(output[:date].size).to eq(6)
  end

  it 'can calculate the shifts' do

    expected = [3, 27, 73, 20]
    expect(enigma.shift_values("02715", "040895")).to eq(expected)
  end

  end
