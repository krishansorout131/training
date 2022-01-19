=begin 
31. Given an array of integers nums and an integer target, return indices of the two numbers such that they
add up to target. You may assume that each input would have exactly one solution, and you may not use
the same element twice. You can return the answer in any order.
=end

  def target_sum(arr,target)
    for i in 0 ... arr.length
      for j in 0 ... arr.length
        if arr[i] + arr[j]  == target && i != j
          return i,j
        end
      end
    end    
  
  
  end
  
  target = 8
  nums = [1,4,6,3,9,2,10]
  p target_sum(nums,target)
  
  #output :-  [2, 5]
  # as 2 = 6, 5 = 2 so 6 + 2 == 8