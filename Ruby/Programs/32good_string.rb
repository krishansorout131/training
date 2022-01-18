#32. Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters
#that appear in s have the same number of occurrences (i.e., the same frequency).

  def good_string(str)
    array = []
    for i in 0 ... str.length
      count = 0
      for j in 0 ... str.length
        if str[i] == str[j]
          count += 1
        end
      end
      array.push(count)
    end  
    bool = true      
    for i in 0 ... array.length
      for j in i+1 ... array.length
        if array[i] != array[j]
          bool = false
          break
        end
      end
    end 
    return bool
  end
  
  s = "good"
  p good_string(s)
  
  # output: false