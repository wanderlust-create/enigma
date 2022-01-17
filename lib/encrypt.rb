require './lib/enigma'

@enigma = Enigma.new

def start_encrypt(infile, outfile, key, date)
  encrypted_message = @enigma.encrypt(infile)
  store_message_info = File.open('message_info.txt', 'w')
  write_key_and_date = store_message_info.write(encrypted_message)
  write_encrypted_message = outfile.write(encrypted_message[:encryption])
  # infile.close
  # outfile.close
end

start_encrypt(infile = File.read('message.txt'), outfile = File.open('encrypted.txt', 'w'), key = @enigma.generate_key, date_in = Time.new)
