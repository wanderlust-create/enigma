require './lib/shiftable'
require './lib/encryptable'

class Enigma
  include Shiftable
  include Encryptable
  attr_reader :key, :message, :date, :shifts

  def initialize (message = File.read('message.txt').downcase, key = self.generate_key, date = Time.new)
    @message = message
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
    if @date.to_s.size == 6 ; return @date
      elsif @date.to_s.size > 6
        code_date = []
          code_date << @date.day.to_s.to_s.rjust(2,'0')
          code_date << @date.month.to_s.rjust(2,'0')
          code_date << @date.year.to_s[2..3]
     return code_date.join
      end
  end


  def encrypt_message_now
    encrypt_message(@message)
  end

  def encrypt
    encrypt_output = {
    :encryption => encrypt_message_now,
    :key => @key,
    :date => date_code
    }
  end




  def decrypt
  end

end

# go = Enigma.new('02715','040895')


# binding.pry

p
