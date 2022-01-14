class Encrypt
  # attr_reader :message,
  #             :,

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def key_generator
    10.times.map{rand(10)}.join
  end

end
