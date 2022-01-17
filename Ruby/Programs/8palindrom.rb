=begin
8. A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all
non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include
letters and numbers. Given a string s, return true if it is a palindrome, or false otherwise.
=end

  def palindrome(str)
    str1 = str.downcase
    str2 = str1.scan(/[\da-z\s]/i).join
    temp = str2.reverse
    if temp == str2
      return true
    else 
      return false  
    end  
  end  
  
  str = "@1Rotator@@%1"
  p = palindrome(str)
  puts p
  
  # output :-- true