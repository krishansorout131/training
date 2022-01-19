# 34. Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the
# result must be unique and you may return the result in any order.

  def intersection(nums1,nums2)
    array = [] 
    for i in 0 ... nums1.length
      for j in 0 ... nums2.length
        if nums1[i] == nums2[j]
          array.push(nums1[i])
          break
        end
      end
    end 
    return array     
  end
  
  
  nums1 = [1,2,3,8,6]
  nums2 = [2,3,4,9,6]
  
  p intersection(nums1, nums2)
  
  # output:--  [2, 3, 6]