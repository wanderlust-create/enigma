require './lib/shiftable'
require './lib/encryptable'
# require 'pry'

class Enigma
  include Shiftable
  include Encryptable
  attr_reader :key, :message, :date, :shifts

  def initialize (key = self.generate_key, date = Time.new)
    @message = File.read('message.txt')
    @key = key
    @date = date
  end

  def shifts(key, date)
    shift_values = Array.new
    shift_values << a_shift(key, date)
    shift_values << b_shift(key, date)
    shift_values << c_shift(key, date)
    shift_values << d_shift(key, date)
    shift_values
  end

  def generate_key
    5.times.map{rand(9)}.join
  end

  def date_code
    code_data = []
    code_data << @date.day.to_s.to_s.rjust(2,'0')
    code_data << @date.month.to_s.rjust(2,'0')
    code_data << @date.year.to_s[2..3]
    code_data.flatten.join
  end

  def generate_a_shift(key, date)
    a_shift(key, date)
  end

  # def encrypt
  #   meassage_array(@message)
  #   message_hash(message_array)
  #
  #
  # end

  # def shift(letter, which_shift)
  #   letter_array = ("a".."z").to_a << " "
  #   find_letter_index = letter_array.find_index(letter)
  #   shift_to = find_letter_index + which_shift
  #   return_letter = letter_array[shift_to]
  #   return_letter
  # end
  #
  #
  # def message_rotate(message)
  #   letter_array = ("a".."z").to_a << " "
  #   # message = "<i am loved3"
  #   encrypted_message = []
  #   shift_array = [3, 17, 12, 5]
  #
  #   message.each_char do |letter|
  #     if letter_array.include?(letter)
  #       shifted_letter = shift(letter, shift_array[2])
  #       encrypted_message << shifted_letter
  #     elsif
  #       encrypted_message << letter
  #     end
  #   end
  #     encrypted_message
  #   end

  def shift(letter, which_shift)
    letter_array = ("a".."z").to_a << " "
    letter_index = letter_array.find_index(letter)
    shift_to = shift_position(letter_index, which_shift)
    return_letter = letter_array[shift_to]
    return_letter
  end

  def shift_position(letter_index, which_shift)
    total = letter_index + which_shift
    caculation = (total % 27)
    return letter_index if caculation == 0
    return caculation unless caculation == 0
  end

  def encrypt(message)
    encrypt_message(message)
  end

  def encrypt_message(message)
    letter_array = ("a".."z").to_a << " "
    encrypted_message = []
    shifts = [3, 27, 73, 20]
    message.each_char do |letter|
      if letter_array.include?(letter)
        shifted_letter = shift(letter, shifts[0])
        encrypted_message << shifted_letter
        shifts.rotate!
      elsif
        encrypted_message << letter
      end
    end
    encrypted_message.join
  end

  def decrypt
  end

end

go = Enigma.new


# binding.pry

p
