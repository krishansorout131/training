#18. Write a function which takes an array of integers, return how many of them contain an even number of digits.

  def evendigit(arr)
    count = 0
    for i in 0 ... arr.length
      size = arr[i].to_s.size
      if size % 2 == 0
        count += 1
      end
    end    
    return count  
  end    
  
  arr = [5,6,7,10,12,14,16,123,234,1324,1234,123456,12345]
  a = evendigit(arr)
  print "#{a}\n"
  
  # output:--   7