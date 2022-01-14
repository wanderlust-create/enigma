require './lib/shiftable'
require 'pry'

class Enigma
  include Shiftable
  attr_reader :key, :message, :date

  def initialize (key = self.generate_key, date = Time.new)
    @message = File.read('message.txt')
    @key = key
    @date = date
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

  def encrypt
    meassage_array = @message.strip.split(//)
    meassage_array.delete_at(0)
    meassage_array

  end

  def decrypt
  end

end

go = Enigma.new
go.encrypt()

binding.pry

p
