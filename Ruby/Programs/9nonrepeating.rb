#9. Given a string s, find the first non-repeating character in it and return its index. 
#If it does not exist, return -1.

  def non_repeating(str)
    bool = false
    for i in 0 ... str.length  
      count =0
      for j in 0 ... str.length
        if str[i] == str[j]
          count = count + 1
        end
      end
      if count == 1 
        index = i
        bool = true
        break
      end
    end
    return index if bool == true
    -1
  end
  
  p = non_repeating("kkraiiss")
  print "#{p}\n"
  
 # output:-- 2 