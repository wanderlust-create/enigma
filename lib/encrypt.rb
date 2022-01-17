require './lib/enigma'

@enigma = Enigma.new
@message = File.read(ARGV[0])
@encrypted_message = @enigma.encrypt(@message, ARGV[2], ARGV[3])
@outfile = File.open(ARGV[1], 'w')
@write_encrypted_message = @outfile.write(@encrypted_message[:encryption])
@store_message_file = File.open('message_info.txt', 'w')
@write_message_info = @store_message_file.write(@encrypted_message)
