=begin
 3. Given a string s, reverse only all the vowels in the string and return it.
 The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.
=end


def vovel_reverse(str)
    string = ""  
    for i in 0 ... str.length
      if str[i].match?(/[aeiouAEIOU]/)
        string << str[i]  
      end
    end
    len = (string.length) - 1
    for i in 0 ... str.length
      if str[i].match?(/[aeiouAEIOU]/)
        str[i] = string[len]  
        len -= 1
      end
    end    
    return str
  end    
  
  reversedString = vovel_reverse("my name is krishan")
  puts reversedString
  
  # output
  #my nami is kreshan