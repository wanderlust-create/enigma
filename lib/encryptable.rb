require "pry"

module Encryptable

  def self.shift_position(current_position, shift)
    total = current_position + shift
    caculation = (total % 27)
    return caculation unless caculation == 0
    return current_position if caculation == 0
  end
  # def shift_a_position
  # end

end

# array.inject(0, :+)
