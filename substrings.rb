def includes_word? (contained_word, container_word)
  contained_word.all? { |character| container_word.include?(character) }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
