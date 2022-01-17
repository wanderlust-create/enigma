require './lib/enigma'

@enigma = Enigma.new
@message = File.read(ARGV[0])
@key = ARGV[2]
@date_in = ARGV[3]
@encrypted_message = @enigma.encrypt(@message)
@outfile = File.open(ARGV[1], 'w')
@write_encrypted_message = @outfile.write(@encrypted_message[:encryption])
@store_message_file = File.open('message_info.txt', 'w')
@write_message_info = @store_message_file.write(@encrypted_message)

# require "pry"; binding.pry

p
