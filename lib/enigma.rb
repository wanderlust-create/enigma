require './lib/shiftable'
require './lib/cryptable'

class Enigma
  include Shiftable
  include Cryptable
  attr_reader :message, :key, :date_in, :shifts

  def initialize
    @shifts = []
    @key = nil
    @date_in = nil
  end

  def encrypt(message = File.read('message.txt').downcase, key = generate_key, date_in = Time.now.strftime("%d%m%y"))
    @shifts.clear
    @key = key
    @date_in = date_in
    shift_values(key, date_in)
    encrypt_output = {
    :encryption => encrypt_message(message),
    :key => key,
    :date => date_in
    }
    return encrypt_output
  end

  def decrypt(message = File.read('message.txt').downcase, key = self.generate_key, date_in = Time.now.strftime("%d%m%y"))
    @shifts.clear
    @key = key
    @date_in = date_in
    shift_values(key, date_in)
    decrypt_output = {
    :decryption => decrypt_message(message),
    :key => key,
    :date => date_in
    }
    return decrypt_output
  end

  def shift_values(key, date_in)
    @shifts << a_shift(@key, @date_in)
    @shifts << b_shift(@key, @date_in)
    @shifts << c_shift(@key, @date_in)
    @shifts << d_shift(@key, @date_in)
    return @shifts
  end

  def generate_key
    5.times.map{rand(9)}.join
  end

end
