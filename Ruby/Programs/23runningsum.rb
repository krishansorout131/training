#23. Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]…nums[i]).
# Return the running sum of nums.

  def runningsum(arr)
    array = []
    for i in 0 ... arr.length
      sum = 0
      for j in 0 .. i 
        sum = sum + arr[j]
      end    
      array[i] = sum
    end 
    return array 
  end
  
  arr = [1,2,3,4,5,6,7,8,9,10]
  sums = runningsum(arr)
  print "#{sums}\n"
  
  # output:--  
  # [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]