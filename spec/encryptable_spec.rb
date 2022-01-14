require 'pry'
require './lib/encryptable'

RSpec.describe 'Encryptable' do

  it 'can shift the a position' do
    expect(Encryptable.shift_a_position('i')).to eq(y)
  end

end
