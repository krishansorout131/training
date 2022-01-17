# 7. Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  def anagram(s,t)
    len1 = s.length
    len2 = t.length
    if len1 != len2
      return false
    end
    s = s.chars.sort
    t = t.chars.sort
    if s == t 
      return true
    else 
      return false
    end    
  end    
  
  string = anagram("krishan","nakrhsi")
  puts string
  
  # output:-- true
  