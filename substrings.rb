dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  word_list = word.downcase.split(" ")
  result = Hash.new

  word_list.each do |word|
    dictionary.each {|w| result[w] = (result.dig(w) || 0) + 1 if word.include?(w)}  
  end

  p result.sort.to_h
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)