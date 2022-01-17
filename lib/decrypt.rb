require './lib/enigma'

@enigma = Enigma.new

@encrypted_message = File.read(ARGV[0])
@key = ARGV[2]
@date_in = ARGV[3]

@decrypted_message = @enigma.decrypt(@encrypted_message, ARGV[2])

@outfile = File.open(ARGV[1], 'w')
@write_decrypted_message = @outfile.write(@decrypted_message[:decryption])

@store_message_file = File.open('message_info.txt', 'w')
@write_message_info = @store_message_file.write(@decrypted_message)
