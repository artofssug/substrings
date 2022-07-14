dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    valid_substrings = Hash.new(0)
    dictionary.each do |substring|
        string.downcase.split(" ").each do |word|
            if word.include?(substring)
                valid_substrings[substring] += 1
            end
        end
    end
    p valid_substrings
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)