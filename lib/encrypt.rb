class Encrypt
  # attr_reader :message,
  #             :,

  def initialize (key = self.key_generator)
    # @message = message
    @key = 
    # @date = date
  end

  def key_generator
    10.times.map{rand(10)}.join
  end

end
