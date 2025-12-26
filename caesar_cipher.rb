def caesar_cipher(word, shift_factor)
  cripted_word = []
  word.split('').each do |letter|
    letter = letter.ord
    letter += shift_factor
    letter = letter.chr

    cripted_word.push(letter)
  end
  cripted_word.join('')
end

puts "Convert to Caesar Cipher"
print "Word do convert: "
word = gets.chomp

print "Shift factor: "
shift = gets.chomp.to_i

puts caesar_cipher(word, shift)