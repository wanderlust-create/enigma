require './lib/enigma'

@enigma = Enigma.new

@encrypted_message = File.read(ARGV[0])
@decrypted_message = @enigma.decrypt(@message, ARGV[2], ARGV[3])
@outfile = File.open(ARGV[1], 'w')
@write_decrypted_message = @outfile.write(@decrypted_message[:encryption])
@store_message_file = File.open('message_info.txt', 'w')
@write_message_info = @store_message_file.write(@decrypted_message)
