def caesar_cipher(word, shift_factor)
  lower_alphabet = 'abcdefghijklmnopqrstuvwxyz'
  upper_alphabet = lower_alphabet.upcase
  coded_word = word.split('')

  coded_word = coded_word.map do |character|
    if lower_alphabet.include?(character)
      character = lower_alphabet[(character.ord - 97 + shift_factor)%26]
    elsif upper_alphabet.include?(character)
      character = upper_alphabet[(character.ord - 65 + shift_factor)%26]
    else
      character
    end
  end
  
  coded_word.join('')
end

puts "Convert to Caesar Cipher"
print "Word do convert: "
word = gets.chomp

print "Shift factor: "
shift = gets.chomp.to_i

puts caesar_cipher(word, shift)