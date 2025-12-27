# require 'pry-byebug'; binding.pry
def substrings (word, dictionary)
  match_words = Hash.new(0)

  dictionary.each do |type|
    if includes_word?(type, word)
      match_words[type] += 1
    end
  end

  match_words
end

def includes_word? (contained_word, container_word)
  contained_word = contained_word.split('')
  container_word = container_word.split('')
  contained_word.all? { |character| container_word.include?(character) }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings('below', dictionary)