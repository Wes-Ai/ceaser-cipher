def caeser_cipher(message, shift_factor)
    seperated_message = message.split('')
    p seperated_message[0].ord
end

def shift_char(char_array, shift_factor)
    char_array.each do |char| char = (char.ord + shift_factor).chr
end

caeser_cipher("Who are you?", 2)