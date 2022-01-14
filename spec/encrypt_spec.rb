require './lib/enigma'
# require './lib/'
require 'pry'

RSpec.describe 'Enigma' do
  let(:encrypt) {Enigma.new}

  it 'exists' do
    expect(encrypt).to be_a Enigma
  end


  it 'can generate random 10 digit number as string' do
  binding.pry
    expect(encrypt.generate_key.size).to eq(10)
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
