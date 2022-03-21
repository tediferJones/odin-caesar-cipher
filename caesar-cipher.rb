
def caesar_cipher(string, shift_factor = 0)
    shifted_string = ""
    string.each_byte do |char_value|
        new_char_value = char_value + shift_factor
        if (char_value > 64 && char_value < 91)
            while new_char_value > 90
                new_char_value -= 26
            end
                shifted_string << (new_char_value).chr
        elsif (char_value > 96 && char_value < 123)
            while new_char_value > 122
                new_char_value -= 26
            end
            shifted_string << (new_char_value).chr
        else
            shifted_string << char_value.chr
        end        
    end
    puts shifted_string
end

puts "Please enter a string"
string = gets.chomp 

puts "Shift by how much? (Integer)"
shift_factor = gets.chomp.to_i

caesar_cipher(string, shift_factor)

#caesar_cipher("What a string!", 5)
