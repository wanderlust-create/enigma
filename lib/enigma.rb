require './lib/shiftable'
require './lib/encryptable'


class Enigma
  include Shiftable
  include Encryptable
  attr_reader :key, :message, :date, :shifts

  def initialize (key = self.generate_key, date = Time.new)
    @message = File.read('message.txt')
    @key = key
    @date = date
    @shifts = shifts
  end

  def shifts
    shift_values = Array.new
    shift_values << a_shift(@key, @date)
    shift_values << b_shift(@key, @date)
    shift_values << c_shift(@key, @date)
    shift_values << d_shift(@key, @date)
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

  def encrypt_now
    encrypt_message(@message)
  end


  def decrypt
  end

end

go = Enigma.new


# binding.pry

p
