def substrings(string, dict)
    string_array = string.split(" ")
    hash = dict.reduce(Hash.new(0)) do |key,value|
        string_array.each do |word|
            if word.include?(value) then key[value] += 1  end
        end
        key
    end
    p hash
        
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
