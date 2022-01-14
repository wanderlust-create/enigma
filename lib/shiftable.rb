require "pry"

module Shiftable

  def self.calculate_keys(key, p1, p2)
    key_array = key.split(//)
    specific_keys = key_array.values_at(p1, p2)
    specific_keys.join.to_i
  end

end
