#30. A pangram is a sentence where every letter of the English alphabet appears at least once.
#Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or
# false otherwise.

  def pangram_str(str)
    str = str.downcase
    for i in "a".."z"
      count = 0
      for j in 0..str.length - 1
        if i == str[j]
          count = 1
          break
        end
      end
      if count == 0
        break
      end
    end
    return true if count == 1
    false
  end
    
  s = "abcdefghijklmnopqrstuvwXYZAbc"
  p pangram_str(s)
  
  #output:-- true