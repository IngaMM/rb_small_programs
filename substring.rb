def substring(string, dictionary)

  result = Hash.new
  string.downcase!
  dictionary.each do |item|
    item.downcase!
    strArray = string.split(" ")
    strArray.each do |strItem|
      if strItem.include? item
        result.key?(item) ? result[item]+= 1 : result[item] = 1
      end
    end
  end

  return result
end

myDictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
                "own","part","partner","sit"]
p substring("Howdy partner, sit down! How's it going?", myDictionary)
