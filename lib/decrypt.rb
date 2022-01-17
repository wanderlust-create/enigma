require './lib/enigma'


@enigma = Enigma.new

def start_decrypt(infile, outfile, key, date)
  decrypted_message = @enigma.decrypt(infile, key, date)
  write_encrypted_message = outfile.write(decrypted_message[:decryption])
end

start_decrypt(file = File.read('encrypted.txt'), outfile = File.open('decrypted.txt', 'w'), key, date_in = Time.new)
