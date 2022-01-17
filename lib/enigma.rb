require './lib/shiftable'
require './lib/cryptable'

class Enigma
  include Shiftable
  include Cryptable
  attr_reader :message, :key, :date, :shifts

  def initialize
    @shifts = []
  end

  def encrypt(message = File.read('message.txt').downcase, key = generate_key, date_in = Time.new)
    @shifts.clear
    formatted_date = date_code(date_in)
    shift_values(key, formatted_date)
    encrypt_output = {
    :encryption => encrypt_message(message),
    :key => key,
    :date => formatted_date
    }
    return encrypt_output
  end

  def decrypt(message = File.read('message.txt').downcase, key = generate_key, date_in = Time.new)
    @shifts.clear
    formatted_date = date_code(date_in)
    shift_values(key, formatted_date)
    decrypt_output = {
    :decryption => decrypt_message(message),
    :key => key,
    :date => formatted_date
    }
    return decrypt_output
  end

  def shift_values(key, formatted_date)
    @shifts << a_shift(key, formatted_date)
    @shifts << b_shift(key, formatted_date)
    @shifts << c_shift(key, formatted_date)
    @shifts << d_shift(key, formatted_date)
    return @shifts
  end

  def generate_key
    5.times.map{rand(9)}.join
  end

  def date_code(date_in)
    if date_in.to_s.size == 6 ; return date_in
    elsif date_in.to_s.size == 25
        code_date = []
          code_date << date_in.day.to_s.to_s.rjust(2,'0')
          code_date << date_in.month.to_s.rjust(2,'0')
          code_date << date_in.year.to_s[2..3]
     return code_date.join
   else
     "Your date has an error."
      end
  end
end
