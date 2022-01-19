#39. Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
# both arrays whose sum is equal to X.

  def pairs_sum(arr1,arr2,x)
    for i in 0 ... arr1.length
      for j in 0 ... arr2.length
        if arr1[i] + arr2[j] == x 
          p [arr1[i], arr2[j]]
        end
      end
    end  
  end           
  
  
  x = 6
  arr1 = [2,4,3,5,7,6,8]
  arr2 = [5,3,2,6,8,9,4,1]
  pairs_sum(arr1,arr2,x)
  
=begin  output:----
  [2, 4]
  [4, 2]
  [3, 3]
  [5, 1]
=end
  