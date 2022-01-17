#25. Given an array nums of size n, return the majority element. The majority element is the element that
# appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  def majority(arr)
    max = arr.length / 2  
    for i in 0 ... arr.length
      count = 0
      for j in 0 ... arr.length  
        if arr[i] == arr[j] 
          count += 1
        end  
      end  
      if count > max 
        return arr[i]  
      end  
    end  
    return print "Any majority Element not found "      
  end
  
  arr = [5,5,5,5,5,5,2,2,2,2,2,2,2]
  element = majority(arr)
  print "#{element}\n"

  # output:  2  