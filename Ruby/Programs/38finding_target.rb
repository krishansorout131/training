#38. Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a
# given target value. If target is not found in the array, return [-1, -1].


  def finding_target(arr,target)
    first = -1
    last = -1
    for i in 0 ... arr.length
      if arr[i] == target
        first = i
        break
      end
    end    
    for j in (arr.length - 1).downto(0)
      if arr[j] == target
        last = j
        break
      end
    end      
    return first, last
  end
  
  nums = [1,2,3,3,3,4,4,5,6]
  target = 3
  p finding_target(nums,target)
  
  #output:  [2, 4]