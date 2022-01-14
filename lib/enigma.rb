require 'pry'

class Enigma
  attr_reader :key, :message, :date


  def initialize (key = self.generate_key)
    @message = File.read('message.txt')
    @key = generate_key
    @date = Time.new
  end

  def generate_key
    10.times.map{rand(10)}.join
  end

  def date_code
    code_data = []
    code_data << @date.day.to_s.to_s.rjust(2,'0')
    code_data << @date.month.to_s.rjust(2,'0')
    code_data << @date.year.to_s[2..3]
    code_data.flatten.join
  end

  def encrypt
  end

  def decrypt
  end

end

go = Enigma.new

# binding.pry

p
