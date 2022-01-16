
require "pry"

module Shiftable

  def square_me(date)
    date.to_i ** 2
  end

  def calculate_keys(key, position1, position2)
    key_array = key.split(//)
    specific_keys = key_array.values_at(position1, position2)
    specific_keys.join.to_i
  end

  def calculate_offsets(date, position1)
    dates = square_me(date).to_s[-4..-1]
    date_array = dates.split(//)
    specific_date = date_array.values_at(position1)
    specific_date.join.to_i
  end

  def a_shift(key, date)
    a_shift_key = calculate_keys(key, 0, 1)
    a_shift_offset = calculate_offsets(date, 0)
    shift = a_shift_key + a_shift_offset
  end

  def b_shift(key, date)
    b_shift_key = calculate_keys(key, 1, 2)
    b_shift_offset = calculate_offsets(date, 1)
    shift = b_shift_key + b_shift_offset
  end

  def c_shift(key, date)
    c_shift_key = calculate_keys(key, 2, 3)
    c_shift_offset = calculate_offsets(date, 2)
    shift = c_shift_key + c_shift_offset
  end

  def d_shift(key, date)
    d_shift_key = calculate_keys(key, 3, 4)
    d_shift_offset = calculate_offsets(date, 3)
    shift = d_shift_key + d_shift_offset
  end

end
