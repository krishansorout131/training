=begin
10. Given a string s and an array of strings words, determine whether s is a prefix string of words.
A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some
positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.
=end

  def prefix_string(array,s)
    str = ""  
    count = 0
    for i in 0 ... array.length
      str << array[i] 
      if s == str 
        count = 1
        break
      end 
      str << " " 
    end
    return true if count == 1
    false
  end    
  
  array = ["my","name","is","krishan","sorout"]
  s = "my name is krishan"
  
  p prefix_string(array,s)
  
  #output:--  true
  
  