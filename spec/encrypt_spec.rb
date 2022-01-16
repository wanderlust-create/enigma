require './lib/enigma'
require 'pry'

RSpec.describe 'Enigma' do
  let(:encrypt) {Enigma.new}

  it 'exists' do
    expect(encrypt).to be_a Enigma
  end

  it 'can read the message to be encrypted' do

    expected = (String)

    expect(encrypt.message.class).to eq(String)
  end

  it 'can generate random 10 digit number as string' do

    expect(encrypt.generate_key.size).to eq(5)
  end

  it'can generate time as DDMMYY' do

    expect(encrypt.date_code.size).to eq(6)
  end



  it 'can rotate' do

    expected = ('keder, ohulw!')
    expect(encrypt.encrypt_message('hello, world!')).to eq(expected)
  end
end

  #
  # it '' do
  #   expect().to eq()
  # end
# end
#
# RSpec.describe 'Iteration ' do
#
#   let() {}

  #
  # it '' do
  #   expect().to eq()
  # end
  #
  # it '' do
  #   expect().to eq()
  # end
#
# end
