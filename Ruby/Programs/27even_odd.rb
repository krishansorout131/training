#27. Given an integer array nums, move all the even integers at the beginning of the array followed by all the
# odd integers. Return any array that satisfies this condition.

  def even_odd(arr)
    array = []
    for i in 0 ... arr.length
      if arr[i] % 2 == 0
        array.push(arr[i]) 
      end
    end     
    return array + (arr - array)
  end
  
  nums = [23,45,12,10,55,56,8,7,6,33,32]
  print "#{even_odd(nums)}\n"
  
  # output:-- 
  #[12, 10, 56, 8, 6, 32, 23, 45, 55, 7, 33]