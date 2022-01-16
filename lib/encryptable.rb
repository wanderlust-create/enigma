# require "pry"

module Encryptable

  def letter_array
    letter_array = ("a".."z").to_a << " "
  end

  def shift_position(letter_index, which_shift)
    total = letter_index + which_shift
    caculation = (total % 27)
    return letter_index if caculation == 0
    return caculation unless caculation == 0
  end

  def shift(letter, which_shift)
    letter_index = letter_array.find_index(letter)
    shift_to = shift_position(letter_index, which_shift)
    return_letter = letter_array[shift_to]
    return_letter
  end

  def encrypt_message(message)
    message.strip!
    encrypted_message = []
    message.each_char do |letter|
      if letter_array.include?(letter)
        shifted_letter = shift(letter, @shifts[0])
        encrypted_message << shifted_letter
        shifts.rotate!
      elsif
        encrypted_message << letter
      end
    end
    encrypted_message.join
  end
end
