#33. Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range
# that is missing from the array.

def missing(arr)
  a2 = []
  for i in 0 .. arr.length
    a2.push(i)
  end
  return (a2 - arr).join.to_i
end
  
  arr = [0,1,2,4,7,3,6]
  p missing(arr)
  
# output:-   5  