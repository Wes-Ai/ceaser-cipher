#Thanks Andrew Marshall https://stackoverflow.com/questions/14551256
def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
end

def caeser_cipher(message, shift_factor)
    if(shift_factor > 10)
        return "Shift factor cannot be above 9."
    elsif(shift_factor < 0)
        return "Shift factor cannot be 0 or below."
    end
    seperated_numbers = (message.split('')).map do |char| 
        if(letter?(char))
            char_number = char.ord
            char_number = char_number + shift_factor

            if(char_number > 122)
                char_number -= 26
            elsif(char_number > 90 && char_number < 97)
                char_number -= 26
            else
                char_number
            end

            char_number.chr
        else
            char
        end
    end

    seperated_numbers.join('')
end




puts caeser_cipher("Who are youz?", 2)
puts caeser_cipher("ABC DEF GHI JKL MNO PQR STU VWX YZ", 3)
puts caeser_cipher("Wtf my man?", 9)
puts caeser_cipher("Wtf my man?", 15)
puts caeser_cipher("Wtf my man?", -5)