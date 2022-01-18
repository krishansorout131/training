=begin
26. A distinct string is a string that is present only once in an array. Given an array of strings arr, and an integer
k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty
string "".
=end

def distinct_string(arr,k)
  array = []
  for i in 0 ... arr.length
    if arr.count(arr[i]) == 1
      array.push(arr[i])
    end
  end 
  return array[k-1] if array.length >= k
  " "
end
  
  k=3
  arr = ["ok","good","good","bad","not","not","yes"]
  dist_string = distinct_string(arr,k)
  
  p dist_string
  
  # output:-- "yes"