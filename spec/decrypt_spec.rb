require './lib/decrypt'
# require './lib/'
require 'pry'

RSpec.describe 'Decrypt' do
  let(:encrypt) {Decrypt.new}

  it 'exists' do
    expect(encrypt).to be_a Decrypt
  end
