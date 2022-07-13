dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, words)
    array_of_substrings = []
    string.split(' ').each do |string|
        array_of_substrings << words.filter_map { |word| word if string.downcase.include?(word) }
    end 
    array_of_substrings.flatten!
    hash_of_substrings = array_of_substrings.reduce(Hash.new(0)) do |result, substring|
        result[substring] += 1
        result
    end
    p hash_of_substrings
end

substrings("Howdy partner, sit down! How's it going?", dictionary)