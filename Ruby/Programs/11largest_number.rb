=begin
11. You are given an array of strings nums and an integer k. Each string in nums represents an integer without leading zeros.
Return the string that represents the kth largest integer in nums. Note: Duplicate numbers should be counted distinctly. 
For example, if nums is ["1","2","2"], "2" is the first largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.
=end

  def largest_number(nums,k)
    array = []
    for i in 0 ... nums.length
      array.push(nums[i].to_i)
    end
    array = array.sort 
    return array[array.length - k]
  end
  nums = ["12","6","14","30","8","34","36","5"]
  k = 3
  
  p largest_number(nums,k)
  
  # output:-- 30