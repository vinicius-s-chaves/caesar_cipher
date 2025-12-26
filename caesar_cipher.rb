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

