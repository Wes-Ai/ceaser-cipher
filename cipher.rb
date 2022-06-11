def caeser_cipher(message, shift_factor)
    seperated_message = message.split('')
    return p shift_char(seperated_message, shift_factor)

end

def shift_char(char_array, shift_factor)
    char_array.filter_map { |char| (char.ord + shift_factor).chr if char=~/[[:alpha:]]/ }
end

caeser_cipher("Who are you?", 2)