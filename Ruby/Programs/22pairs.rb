=begin 
22. Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that
|nums[i] - nums[j]| == k.
The value of |x| is defined as:
x if x >= 0.
-x if x < 0
=end

  def pairs(nums,k)
    count = 0  
    for i in 0 ... nums.length - 1
      for j in i + 1 ... nums.length
        if (nums[i] - nums[j]) == k || (nums[i] - nums[j]) == -k
          count += 1
        end  
      end
    end    
    return count
  end
  
  nums = [1,2,4,5,3,3]
  p pairs(nums,2)
  
  #output:--  5