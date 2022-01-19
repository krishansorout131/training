=begin 24. Write a function which takes square matrix mat, return the sum of the matrix diagonals.
Only include the sum of all the elements on the primary diagonal and all the elements on the secondary
diagonal that are not part of the primary diagonal.
=end

def sqr_matrix(arr)
  sum = 0
  for i in 0 ... arr.length #row
    for j in 0 ... arr[0].length  # col
      if(i==j) || (i+j == arr.length-1)
        sum = sum + arr[i][j]
      end
    end 
  end
  return sum
end

mat = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
p sqr_matrix(mat)

#output:--  68
