#Thanks Andrew Marshall https://stackoverflow.com/questions/14551256
def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
end

def caeser_cipher(message, shift_factor)
    seperated_numbers = (message.split('')).map do |char| 
        if(letter?(char))
            char.ord
        else
            char
        end
    end
end




p caeser_cipher("Who are you?", 2)