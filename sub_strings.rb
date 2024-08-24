def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, word|
    string.downcase.scan(word.downcase) { result[word] += 1 }
    result
  end
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)