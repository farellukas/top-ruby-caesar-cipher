# frozen_string_literal: true

def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    string.downcase.scan(word.downcase) { result[word] += 1 }
  end
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
