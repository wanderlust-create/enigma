require './lib/decryptable'
require './lib/enigma'

RSpec.describe 'Decryptable' do
  let(:encrypt) {Enigma.new('02715','040895')}

  it 'can read an incomming message'
end
