require "pry"

module Encryptable


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

  # def self.meassage_array(message)
  #   message.strip.split(//)
  # end



#   def self.message_hash(message_array)
#     message_with_index = {}
#     shifts = [:a, :b, :c, :d]
#     message_array.each_with_index do |letter, index|
#       if letter_array.include?(letter)
#         shift_type = index % 4
#         (message_with_index[shifts[shift_type]] ||= []) << letter
#     else
#
#     end
#     end
#     message_with_index
#   binding.pry
#   end
#
#   length = sentence.length
# sentence.each_char.with_index(1){|char, i|
#   if i == length
#     ...
#   end

  def self.letter_array
    ("a".."z").to_a << " "
  end

  def shift(char, which_shift)
  end

  # def self.message_array(message_array)
  #   array = []
  #   message_array.each_with_index {|item, index|
  #     hashed[index] = item }
  # binding.pry
  #   hashed
  # end

  def shift_character(message_array)
    letter_array = ("a".."z").to_a << " "

  end
end


  #
  def self.shift_position(current_position, shift)
    total = current_position + shift
    caculation = (total % 27)
    return current_position if caculation == 0
    return caculation unless caculation == 0
  end
  def shift_a_position
  end



# array.inject(0, :+)
