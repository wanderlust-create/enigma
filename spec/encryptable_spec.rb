require 'pry'
require './lib/encryptable'

RSpec.describe 'Encryptable' do

  it 'can read array positions' do

    expect(Encryptable.read_position(13).to eq('m')
  end

  it 'can calculate the limited positions to shift' do

    expect(Encryptable.shift_position('s', 66).to eq('d')
  end

  it 'can shift a position by argument spaces' do
    expect(Encryptable.shift_a_position('i', 16).to eq('y')
  end

end
