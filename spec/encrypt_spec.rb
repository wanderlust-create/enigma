require './lib/encrypt'
# require './lib/'
require 'pry'

RSpec.describe 'Encrypt' do
  let(:encrypt) {Encrypt.new}
  # let(:) {}
  # let(:) {}
  # let(:) {}



  it 'exists' do
    expect(encrypt).to be_a Encrypt
  end

  # it 'has attributes' do
  #   expect().to eq()
  #   expect().to eq()
  #   expect().to eq()
  # end
# end

  it 'can generate random 10 digit number as string' do

    expect(encrypt.key_generator.size).to eq(10)
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
