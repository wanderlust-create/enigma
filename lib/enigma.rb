require 'pry'

class Enigma
  attr_reader :key, :message, :date


  def initialize (key = self.generate_key)
    @message = File.read('message.txt')
    @key = generate_key
    # @date = date
  end

  def generate_key
    10.times.map{rand(10)}.join
  end

  def encrypt
  end

  def decrypt
  end

end

go = Enigma.new

binding.pry

p
