#20. Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, …N} is missing
#and one number 'B' occurs twice in array. Find these two numbers.

  def unsorted(arr)
    for i in 0 ... arr.length
      if arr.count(arr[i]) == 2
        puts "The number which comes twice #{arr[i]}"
        break
      end
    end
    
    for i in 1 .. arr.length
      bool = false
      for j in 0 ... arr.length
        if i == arr[j]
          bool = true
          break
        end
      end
      if bool == false
        puts "The number from set which is not present in array #{i}"
        break
      end
    end
  end
  
  arr = [9,1,3,4,5,2,2,8,7]
  unsorted(arr)
  
  
  # output: --  
  # The number which comes twice 2
  # The number from set which is not present in array 6