require 'pry'
require './lib/encryptable'

RSpec.describe 'Encryptable' do

  it 'can shift a position by argument spaces' do
    expect(Encryptable.shift_a_position('i', 16).to eq('y')
  end

end
