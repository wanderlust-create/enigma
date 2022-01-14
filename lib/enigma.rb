class Enigma


  def initialize (key = self.generate_key)
    @message = gets.chomp
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
