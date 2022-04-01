def substrings(string, dictionary)
  count_hash = Hash.new(0)
  
  dictionary.each do |word|
    match = string.downcase.scan(word).size
    count_hash[word] = match
  end

  count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)