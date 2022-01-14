require "pry"

module Shiftable

def self.square_me(date)
  date.to_i ** 2
end

  def self.calculate_keys(key, position1, position2)
    key_array = key.split(//)
    specific_keys = key_array.values_at(position1, position2)
    specific_keys.join.to_i
  end

  def self.calculate_offsets(date, position1)
    dates = square_me(date).to_s[-4..-1]
    date_array = dates.split(//)
    specific_date = date_array.values_at(position1)
    specific_date.join.to_i
  end

end
