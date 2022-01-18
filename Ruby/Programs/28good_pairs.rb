#28. Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j

def good_pairs(nums)
  count = 0  
  for i in 0 ... nums.length
    for j in i + 1 ... nums.length
      if nums[i] == nums[j] 
        count += 1
      end  
    end
  end    
  return count
end
  
nums = [1,6,9,7,1,6,3,7]
print "#{good_pairs(nums)}\n"
  
#output:--  3