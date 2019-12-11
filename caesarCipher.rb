def caesar_cipher(string, ishift)
  arr = string.split("")
  arr.each_with_index do |char, index|
   if (char.ord.between?(65,90))
      newChar = char.ord + ishift
      if (newChar > 90)
        newChar -= 26
      end
      arr[index] = newChar.chr
   elsif (char.ord.between?(97,122))
     newChar = char.ord + ishift
     if (newChar > 122)
       newChar -= 26
     end
     arr[index] = newChar.chr
  end
 end

 return arr.join

end

puts caesar_cipher("how are you", 5)
