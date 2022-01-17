module Cryptable

  def letter_array
    letter_array = ("a".."z").to_a << " "
  end

  def shift_position(letter_index, which_shift)
    sum = letter_index + which_shift
    caculation = (sum % 27)
    return letter_index if caculation == 0
    return caculation unless caculation == 0
  end

  def unshift_position(letter_index, which_shift)
    difference = letter_index - which_shift
    caculation = (difference % 27)
    return letter_index if caculation == 0
    return caculation unless caculation == 0
  end

  def shift(letter, which_shift)
    letter_index = letter_array.find_index(letter)
    shift_to = shift_position(letter_index, which_shift)
    return_letter = letter_array[shift_to]
    return_letter
  end

  def unshift(letter, which_shift)
    letter_index = letter_array.find_index(letter)
    shift_to = unshift_position(letter_index, which_shift)
    return_letter = letter_array[shift_to]
    return_letter
  end

  def encrypt_message(message)
    message.strip!
    shift_value = @shifts
    encrypted_message = []
    message.each_char do |letter|
      if letter_array.include?(letter)
        shifted_letter = shift(letter, shift_value[0])
        encrypted_message << shifted_letter
        shift_value.rotate!
      elsif
        encrypted_message << letter
      end
    end
    encrypted_message.join
  end

  def decrypt_message(message)
    shift_value = @shifts
    decrypted_message = []
    message.each_char do |letter|
      if letter_array.include?(letter)
        shifted_letter = unshift(letter, shift_value[0])
        decrypted_message << shifted_letter
        shift_value.rotate!
      elsif
        decrypted_message << letter
      end
    end
    decrypted_message.join
  end
end
