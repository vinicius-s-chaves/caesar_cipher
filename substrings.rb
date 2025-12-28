# require 'pry-byebug'; binding.pry
def substrings (string, dictionary)
  match_words = Hash.new(0)
  words = string.split(' ')
  dictionary.each do |type|
    words.each do |word|
      if includes_word?(type, word)
        match_words[type] += 1
      end
    end
  end
  match_words
end

def includes_word? (contained_word, container_word)
  contained_word = contained_word.downcase.split('')
  container_word = container_word.downcase.split('')
  contained_word.all? { |character| container_word.include?(character) }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)